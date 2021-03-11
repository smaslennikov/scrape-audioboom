#!/bin/bash

set -e

# recursively snag podcast episodes off audioboom.com
getmp3 () {
  echo "Snagging $1"
  echo curl -Lso $(echo $1 | sed -e "s/.*[0-9]-/$2-/").mp3 "$1".mp3
  next=$(curl -s "$1" | grep playlist_direction | grep -v cdn | sed -e 's/.*href="//' -e 's/\?playlist_direction.*//')
  getmp3 "https:"$next $(($2 + 1))
}

# first argument is the url, second is the counter to start with
if [[ $# -ne 2 ]]; then
   echo "$0: Please submit the following arguments:"
   echo "$0 AUDIOBOOM_URL COUNTER"
   exit 4
fi

getmp3 "$1" $2
