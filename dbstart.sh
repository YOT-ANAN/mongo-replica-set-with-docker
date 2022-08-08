#!/bin/bash

docker-compose up -d

sleep 5

docker exec mongo1 chmod +x /scripts/rs-init.sh

sleep 5

docker exec mongo1 /scripts/rs-init.sh

sleep 5

docker exec mongo1 chmod +x /scripts/createuser.sh

sleep 5

docker exec mongo1 /scripts/createuser.sh





