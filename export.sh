#!/bin/sh
cd /home/thomas/dev/computoms.github.io/docs
sudo rm -r v2/
mkdir v2
cd v2
sudo cp -r /usr/share/nginx/html/* .
git commit -am "Update v2 site"
git push