#!/usr/bin/env sh

set -x
# Remove existing container if it exists
docker rm -f my-flask-app:latest || true
#docker run -d -p 5000:5000 --name my-flask-app -v "/mnt/c/mods/y2t3/ssd/own github/flaskdemo" my-flask-app:latest
docker run -d -p 0.0.0.0:5000:5000 --name my-flask-app -v "/mnt/c/mods/y2t3/ssd/own github/flaskdemo" my-flask-app:latest

sleep 1
set +x

echo 'Now...'
echo 'Visit http://192.168.1.9:5000 to see your Flask application in action.'
