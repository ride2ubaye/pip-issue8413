#!/bin/bash

PYPI=https://pypi.org/simple/
#NEW_RESOLVER="--unstable-feature=resolver"

for i in {1..10}; 
do 
    echo "pip issue#8413 - iteration $i"; 
    rm -rf venv.$i
    python3 -m venv venv.$i
    source ./venv.$i/bin/activate
    pip install --upgrade --index-url $PYPI --no-cache-dir pip setuptools wheel pipdeptree
    pip install -vvv --log log.$i ${NEW_RESOLVER:-} -r requirements.txt -f ./mylib/dist --index-url $PYPI
    pipdeptree > pipdeptree.$i
    deactivate
done