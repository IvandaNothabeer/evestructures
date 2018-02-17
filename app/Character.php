<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Character extends Model
{
    use Notifiable;

    protected $guarded = [];
    //
    public function routeNotificationForDiscord() {
        $this->discord_webhook;
    }

    /**
    * The structures that belong to the character.
    */
    public function structures()
    {
        return $this->belongsToMany('App\Structure');
    }

}
