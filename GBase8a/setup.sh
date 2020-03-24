#!/bin/bash

source ~/.bashrc

gbase.server start
sleep 3

gbase -uroot -e "SET PASSWORD FOR root = PASSWORD('root')"

echo `lsof -i:5258`

