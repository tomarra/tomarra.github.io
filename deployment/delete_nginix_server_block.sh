#!/usr/bin/env bash
#remove server block

rm -f /etc/nginx/sites-enabled/$1;
rm -f /etc/nginx/sites-available/$1;
rm -rf /var/www/$1;
/etc/init.d/nginx restart ;
