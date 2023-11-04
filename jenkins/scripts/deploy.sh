#!/usr/bin/env sh

set -x
pwd
# Run the Docker container with a volume mount
docker run -d -p 80:80 --name my-apache-php-app -v /var/jenkins_home/workspace/jenkins-php-selenium-test:/var/www/html/ php:7.2-apache
sleep 1

docker volume ls
pwd

set +x
echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'