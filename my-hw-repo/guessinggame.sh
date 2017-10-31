#!usr/bin/env bash
#guessinggame.sh

function open {
  echo "Let's play a game"
  echo "There are between 1 and 25 files in the directory."
  echo "Enter your guess:"
}

answer=$((1+ RANDOM % 25 ))
guess=-1
open
while [ "$guess" != "$answer" ]; do
    read guess
    if [ "$guess" = "$answer" ]; then
        echo -e "\aCongratulations! $guess is the correct answer!"
    elif [ "$answer" -gt "$guess" ]; then
        echo "There are more files than you guessed. Try again."
    else
        echo "There are fewer files than you guessed. Try again."
    fi
done

