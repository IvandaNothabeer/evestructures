<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use \DiscordWebhooks\Client;
use \DiscordWebhooks\Embed;
use App\Channels\DiscordChannel;
use App\Channels\SlackChannel;
use Log;

class LowFuelDiscord extends Notification
{
    use Queueable;

    /**
    * Create a new notification instance.
    *
    * @return void
    */
    public function __construct(\App\Structure $structure)
    {
        $this->structure = $structure;
    }

    /**
    * Get the notification's delivery channels.
    *
    * @param  mixed  $notifiable
    * @return array
    */
    public function via($notifiable)
    {
        return (str_contains($notifiable->fuel_webhook,'slack')) ? [SlackChannel::class] : [DiscordChannel::class];
    }


    public function toDiscord($notifiable) {
        try {
            $client = new Client($notifiable->fuel_webhook);

            $embed = new Embed();
            $embed->title("{$this->structure->structure_name}", env('APP_URL') . "/home/structure/{$this->structure->structure_id}");
            $embed->description(':warning: **Fuel Alert** :warning:');
            $embed->color( 15105570 );
            $embed->thumbnail("https://imageserver.eveonline.com/Type/{$this->structure->type_id}_64.png");
            $embed->author(env('APP_NAME'). 'Bot', null, "https://imageserver.eveonline.com/Character/{$this->structure->character_id}_64.jpg");
            $embed->field('Fuel Remaining', $this->structure->fuel_time_left, TRUE);
            $embed->field('Fuel Expiration', $this->structure->fuel_expires, TRUE);
            $embed->field('System', $this->structure->system_name, TRUE);

            $client->username(env('APP_NAME'))
            ->avatar(env('APP_URL') . "/images/avatar.png")
            ->embed($embed);

            return $client->send();
        } catch (\Exception $e) {
            Log::error("Failed to send discord notification for $notifiable->character_name on account $notificable->user_id , $e->getMessage()");
        }
    }

    public function toSlack($notifiable) {

        try {
            $client = new \GuzzleHttp\Client();
            $client->request(
                'POST',
                $notifiable->fuel_webhook,
                ['json'=>['text'=>
                    "<!channel> **Fuel Alert** {$this->structure->structure_name} | Remaining: {$this->structure->fuel_time_left} | Expires {$this->structure->fuel_expires}"
            ]]);      
            Log::debug("Sent Low Fuel Slack notification for {$this->structure->structure_name}");
            return true;
        }
        catch (\Exception $e){
            Log::error("Failed to send <FUEL ALERT> slack notification for {$this->structure->structure_name} , $e");    
        }

    }
}
