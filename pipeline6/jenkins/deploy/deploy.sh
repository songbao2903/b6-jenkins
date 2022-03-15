#!/bin/bash

echo mave-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#scp  /tmp/.auth root@192.168.100.10:/tmp/.auth
scp  /tmp/.auth root@192.168.100.10:/tmp/.auth
scp publish.sh root@192.168.100.10:/tmp/publish
ssh root@192.168.100.10 "bash /tmp/publish"
