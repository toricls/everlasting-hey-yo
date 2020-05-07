#!/bin/sh

DEFAULT_MSG="Hey, Yo!"
ANOTHER_MSG="Check It Out! Yo!"

trap IWillNeverDie 15

Output () {
  MSG="$1"
  if [ "x${TIMESTAMP}" != "x" ]; then
    TS=$(date -Iseconds)
    MSG="${TS} ${MSG}"
  fi
  echo "${MSG}"
}

IWillNeverDie () {
  if [ "x${LET_ME_DIE}" != "x" ]; then
    Output "Hey, he..."
    sleep 3
    exit 0
  else
    Output "Hey, Hey, ${DEFAULT_MSG}!!"
  fi
}

while true
do
  MSG="${DEFAULT_MSG}"
  # GIVE_ME_PATTERNS
  if [ "x${GIVE_ME_PATTERN}" != "x" ]; then
    if [ $((${RANDOM} % 2)) = 1 ]; then
      MSG="${ANOTHER_MSG}"
    fi
  fi
  Output "$MSG"
  sleep 1
done
