#!/bin/bash
set -x 
echo "refreshed"
killall live-reload||: 
go build -o ./live-reload ./src/main.go 
chmod +x ./live-reload
./live-reload &