#!/usr/bin/env bash
INIT_PWD=$PWD
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

cd $SCRIPT_DIR/src
source .venv/bin/activate
python3 generate.py $1
deactivate
git add --all
git status
cd $INIT_PWD
open http://localhost:8000/