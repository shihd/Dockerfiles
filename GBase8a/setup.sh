#!/bin/bash

source ~/.bashrc

gbase.server start
sleep 3

echo `lsof -i:5258`

