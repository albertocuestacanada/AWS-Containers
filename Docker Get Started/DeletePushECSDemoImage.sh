#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name PushECSDemoImageDocker

waitForDeletion.py -s PushECSDemoImageDocker
beep
