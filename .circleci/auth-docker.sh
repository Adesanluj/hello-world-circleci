#!/bin/bash
aws ecr get-login --no-include-email --region eu-west-1 > login-key.sh
chmod 757 ./login-key.sh && ./login-key.sh
rm -f ./login-key.sh

