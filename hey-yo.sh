#!/bin/sh

MSG="Hey, Yo!"

trap IWillNeverDie 15

IWillNeverDie()
{
  if [ -z "${LET_ME_DIE}" ]; then
    echo "Hey, he..."
    sleep 5
    exit 0
  else
    echo "Hey, Hey, ${MSG}!!"
  fi
}

while true
do
  if [ -z "${GIVE_ME_PATTERNS}" ]; then
    echo "${MSG}"
  else
    if [ $((${RANDOM} % 2)) = 1 ]; then
      echo "A lot of ${MSG}"
    else
      echo "${MSG}"
    fi
  fi
  sleep 1
done
