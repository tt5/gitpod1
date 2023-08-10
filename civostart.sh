#!/bin/bash

civo kubernetes create -r "Traefik-v2-nodeport" -r "metrics-server" -w -e "default-default" -n 1 -s "g4s.kube.large"

NAME=$(civo kubernetes list -o json | jq -r '.[].name')
civo kubernetes config ${NAME} -s
