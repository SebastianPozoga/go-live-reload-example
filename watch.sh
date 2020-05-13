#!/bin/sh
set -x 
chmod +x ./change.sh
sh ./change.sh
fswatch -o ./src | xargs -n1 -I{} sh ./change.sh 
killall live-reload||: 