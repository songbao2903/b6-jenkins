#!/bin/bash

echo maven-project >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#scp  /tmp/.auth root@192.168.100.10:/tmp/.auth
scp  /tmp/.auth root@Node1:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@Node1:/tmp/publish
ssh root@Node1 "bash /tmp/publish"
