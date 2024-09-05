#!/bin/bash
set -x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SERVICE_NAME=$(basename $SCRIPT_DIR)

pids=$(pgrep -f "python $SCRIPT_DIR/$SERVICE_NAME.py")
[[ -n $pids ]] && kill $pids
