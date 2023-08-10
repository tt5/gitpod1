#!/bin/bash

NAME=$(civo kubernetes list -o json | jq -r '.[].name')
civo kubernetes remove ${NAME}
