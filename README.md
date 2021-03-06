# EveStructures
This provides a consolidated view of all your structures across multiple Eve Online Corporations. Gathers and displays important data like fuel, services, locations, states and much more.

EveStrucutures is built with the Laravel PHP Framework. For more info on [Laravel](https://laravel.com/docs/5.5)

This Fork is built for Alliance Services and adds back end functionality not available on the public evestructures website. All structures registered on the wbsite are visible through the back end toi system administrators and Alliance Structure Managers. There are chages to the top menu bar, Titles and icons are changed In addition there are minor changes to the database structure to make back end administration easier.

## Donate
If you liked EveStructures, please consider donating ISK in game to [Brock Khans](https://evewho.com/pilot/Brock+Khans) or [PayPal](paypal.me/skiedude)

## Prequisite Installs
* [php] >= 7.0.0
* [mysql] - Download for your OS
* [composer](https://getcomposer.org/doc/00-intro.md) - Used for installing Laravel, and other updates
* [laravel requirements](https://laravel.com/docs/5.5) - Check page
* [apache/httpd] - Whatever your OS supports

### Eve Developers Site
[Eve Online Developer](https://developers.eveonline.com/) - You will need to setup your own developer application that uses
* esi-universe.read_structures 
* esi-corporations.read_structures
* esi-characters.read_corporation_roles
* esi-industry.read_corporation_mining 
  
Set the callback url to 
```
http(s)://your_domain.com/sso/callback
```
More info can be found [ESI Docs](http://eveonline-third-party-documentation.readthedocs.io/en/latest/esi/index.html)

## Install
### Databases
We need 2 databases created.
```
create database sde
create database evestructures
```
Create one user and give it privileges on both databases. 

Get the latest DB dump of the SDE from [Fuzzworks](https://www.fuzzwork.co.uk/dump/) and import it into the SDE database.

### Git Repo
Pull down the repo and Run (I made composer a global binary by following [binary](https://getcomposer.org/doc/00-intro.md#globally) )
```
composer install
```

### Environment File
We need to update/add some values to the .env file. (If one is not created, copy the .env.example to be .env
Update the following in the .env file (add if missing)
```
APP_NAME=  //used in the emails
APP_ENV=prod  //use prod
APP_URL= //url of your website for the emails
SITE_NAME= //used in disclaimer

DB_DATABASE_SDE= //name of the sde database you created
DB_DATABASE= // 2nd database you created
DB_USERNAME= // username that has access to both databases
DB_PASSWORD= // password for ^ user
QUEUE_DRIVER= //use database if you intend to use supervisord

MAIL_* // based off what mail setup you wish to use

USERAGENT= //used for the HTTP requests
CALLBACK_URL=https://URL_GOES_HERE.COM/sso/callback  //update the URL there in the middle, adjust for non https
CLIENT_ID=  //retrieved from your developer account
SECRET_KEY= // retrieved from your developer account
```

### Web Service
I won't go in depth on how to configure apache for each OS type. But you need to point the home directory to the public folder of your installation.
Here is what mine looks like using httpd on Centos 7
```
<VirtualHost *:80>
  ServerName structures.eveskillboard.com
  DocumentRoot "/var/www/html/structures/public"
</VirtualHost>
```
or SSL
```
<VirtualHost *:443>
  ServerName structures.eveskillboard.com
  DocumentRoot "/var/www/html/structures/public"
  SSLEngine on
  SSLCertificateFile /etc/ssl/certs/eveskillboard.com.crt
  SSLCertificateKeyFile /etc/ssl/private/eveskillboard.com.key
</VirtualHost>
```

### Database Migrations
Run the php artisan migration command to set create your database tables
```
php artisan migrate
php artisan db:seed   //this fills in all the demo data, Not Required - Demo views are removed in this Fork.
```

### Logs
Laravel requires special permissions on the the sub folders in storage, you can set everything to 777, but I'd warn against that. I wrote a bash alias that fixes this for me. You will need to adjust this based off the user your web service runs under.
https://stackoverflow.com/a/37266353
```
alias fixstorage='sudo chgrp -R apache storage bootstrap/cache && sudo chmod -R ug+rwx storage bootstrap/cache'
```
### Supervisord
Supervisord takes care of running the jobs as they enter the queue.
[Supervisord Setup Instructions](https://laravel.com/docs/5.5/queues#supervisor-configuration).    
For Centos7 my files in conf.d needed to be .ini  
Example config that I use
```
[program:laravel-worker]
process_name=%(program_name)s_%(process_num)02d
command=php /UPDATE_PATH_TO_INSTALL/artisan queue:work --sleep=3 --tries=3 --timeout=10
autostart=true
autorestart=true
user=UPDATE_TO_YOUR_USER
numprocs=2
redirect_stderr=true
stdout_logfile=/UPDATE_PATH_TO_INSTALL/worker.log

```

### Cron
Updating Structures every 3 hours, and checking for Fuel Notifications to send are run via the Schedule feature of Laravel. This requires running a cron once a minute to see if there are any tasks to schedule (this also schedules the jobs that get passed to supervisord).

Create a cron with the following entry
[Laravel Scheduler](https://laravel.com/docs/5.5/scheduling#introduction)
```
* * * * * php /path-to-your-project/artisan schedule:run >> /dev/null 2>&1
```

From here you should be able to hit your Website in the browser, and play around with it.

### Commands
These are run on a schedule already, but if you want to run on demand, use the following commands:
```
php artisan update:structures //Kick off a Job for each Character to update their structure data from ESI
php artisan check:fuel //Run the Fuel check and send notifications if required
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

### SLACK Integration
Added Support for Slack Integration ....
- Create a Slack Webhook
- Add the Webhook URL to the Notifications page

### Administration Back End
A Back end is added using tcg/voyager. See here ... https://github.com/the-control-group/voyager
for detail instructions on how to install
```
php artisan migrate
php artisan voyager:install
```
 - Log in to the admin backend at <yoursite>/admin and check all is running. if you cannot log in to the admin
 interface, got to the Users table and set the "role" to 1.
 - Import the Default Backend Configuration file from \database\migrations\DefaultAdminConfig.sql

 The default backend configiuration comes with 3 user roles.
  - Admin has access to everything, including changing the BREAD and Menu configurations
  - Manager has view access to all of the structures in the database
  - User has no access to any of the back end functions and can only view thier own structures on the Home page
  
Details on how to build a BREAD interface are on the voyager website. You can configure the BREAD menus and displays however you wish. 

Note that its a BAD IDEA to delete the default BREAD configurations because that can break all sorts of unexpected things. 
Also, for the same reason, be careful deleting menu items.

The standard BREAD view has been modified slightly to make relationships work properly with evestructures. 
After creating a BREAD, you can create a relationship to a related record. Eg. To Show a Structure Name ....
- Create a HAS_ONE relationship
- The relationship is Structures
- the model is App\Structures
- Display the structure_name
- Set the update field to **structure_id**  - this will link the relationship to the correct field in the structure.

### JSON API
Added a simple API to return limited information via an API
- Uses Bearer Token Authentication. So NO, It's not secure! Use https and keep the token secret
- Set the Bearer token in .env

Supported api calls can be found in /routes/api.php
