#!/bin/bash

cd /app
virtualenv -p python3 env
env/bin/pip install .
source env/bin/activate