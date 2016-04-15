#!/usr/bin/env bash
#nginx - new server block

# Functions
ok() { echo -e '\e[32m'$1'\e[m'; } # Green
die() { echo -e '\e[1;31m'$1'\e[m'; exit 1; }

# Variables
NGINX_AVAILABLE_VHOSTS='/etc/nginx/sites-available'
NGINX_ENABLED_VHOSTS='/etc/nginx/sites-enabled'
WEB_DIR='/var/www'
WEB_USER='www-data'

# Sanity check
[ $(id -g) != "0" ] && die "Script must be run as root."
[ $# != "1" ] && die "Usage: $(basename $0) domainName"

# Create nginx config file
cat > $NGINX_AVAILABLE_VHOSTS/$1 <<EOF
server {
  server_name $1 www.$1;
  listen 80;
  root $WEB_DIR/$1/public_html;
  access_log $WEB_DIR/$1/logs/access.log;
  error_log $WEB_DIR/$1/logs/error.log;
  index index.html index.php;
  location / {
    try_files \$uri \$uri/ @rewrites;
  }
  location @rewrites {
    rewrite ^ /index.php last;
  }
  location ~* \.(jpg|jpeg|gif|css|png|js|ico|html)$ {
    access_log off;
    expires max;
  }
  location ~ /\.ht {
    deny  all;
  }
}
EOF

# Creating {public,log} directories
mkdir -p $WEB_DIR/$1/{public_html,logs}

# Creating index.html file
cat > $WEB_DIR/$1/public_html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
        <title>$1</title>
        <meta charset="utf-8" />
</head>
<body class="container">
        <header><h1>$1<h1></header>
        <footer>© $(date +%Y)</footer>
</body>
</html>
EOF

# Changing permissions
chown -R $WEB_USER:$WEB_USER $WEB_DIR/$1

# Enable site by creating symbolic link
ln -nfs $NGINX_AVAILABLE_VHOSTS/$1 $NGINX_ENABLED_VHOSTS/$1

# Restart
/etc/init.d/nginx restart ;

ok "Site Created for $1"
