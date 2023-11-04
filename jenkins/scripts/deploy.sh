#!/usr/bin/env sh

set -x

# Run the Docker container with a volume mount
docker run -d -p 80:80 --name my-apache-php-app -v C:\\Users\\there\\Documents\\GitHub\\jenkins-php-selenium-test\\src:/var/www/html/ php:7.2-apache
sleep 1

pwd

# Change directory to the root
cd /

ls -l

cd var

ls -l

cd www

ls -l

cd html

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'