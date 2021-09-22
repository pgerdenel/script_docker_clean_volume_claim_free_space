#!/bin/bash
for vol in $(docker volume ls | awk '{print $2}' | grep -v VOLUME)
do
  docker volume rm $vol
done
