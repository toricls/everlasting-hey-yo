#!/bin/sh

trap IWillNeverDie 15

IWillNeverDie()
{
  echo "Hey, Hey, Hey, Yo!!!"
}

while true
do
  echo "Hey, Yo!"
  sleep 1
done
