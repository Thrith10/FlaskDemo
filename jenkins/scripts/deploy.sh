#!/usr/bin/env sh

set -x
# Remove existing container if it exists
docker rm -f my-flask-app || true
docker run -d -p 5000:5000 --name my-flask-app -v "/mnt/c/mods/y2t3/ssd/own github/flaskdemo:/app" my-jenkins-flask-app
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost:5000 to see your Flask application in action.'
