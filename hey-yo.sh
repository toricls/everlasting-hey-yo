#!/bin/sh

trap IWillNeverDie 15

IWillNeverDie()
{
  if [ -z "${LET_ME_DIE}" ]; then
    echo "Hey, Hey, Hey, Yo!!!"
  else
    echo "Hey, he..."
    sleep 5
    exit 0
  fi  
}

while true
do
  echo "Hey, Yo!"
  sleep 1
done
