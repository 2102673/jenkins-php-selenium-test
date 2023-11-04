#!/usr/bin/env sh

set -x

# Run the Docker container with a volume mount
docker run -d -p 80:80 --name my-apache-php-app -v C:\\Users\\there\\Documents\\GitHub\\jenkins-php-selenium-test\\src:/var/www/html/ php:7.2-apache
sleep 1

# Change directory to the root
cd /

# Change permissions for /var, /var/www, and /var/www/html to full (read, write, execute)
chmod -R 777 /var /var/www /var/www/html

# Change directory back to /var/www/html
cd /var/www/html

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'