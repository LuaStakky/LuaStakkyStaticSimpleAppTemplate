#!/bin/bash
clear 
python3 -m LuaStakky
docker-compose  -f docker-compose.yml -f docker-compose.default.yaml "${@:1}"
