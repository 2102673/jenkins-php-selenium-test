#!/usr/bin/env sh

set -x

# Run the Docker container with a volume mount
docker run -d -p 80:80 --name my-apache-php-app -v C:\\Users\\there\\Documents\\GitHub\\jenkins-php-selenium-test\\src:/var/jenkins_home/workspace/jenkins-php-selenium-test/ php:7.2-apache
sleep 1

docker volume ls
pwd


echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'