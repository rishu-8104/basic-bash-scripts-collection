#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: fetch_rfc.sh <number of RFC files to fetch>"
  exit 1
fi

num=$1

for (( i=1; i<=num; i++ ))
do
  rfc_num=$((1 + RANDOM % 9000))
  rfc_url="https://www.ietf.org/rfc/rfc${rfc_num}.txt"
  rfc_file="rfc${rfc_num}.txt"
  curl -s -o $rfc_file $rfc_url
  if [ -f $rfc_file ]; then
    title=$(grep -oE '^Title:\s*\K.*' $rfc_file)
    lines=$(wc -l < $rfc_file)
    echo "RFC $rfc_num: $title"
    echo "Number of lines: $lines"
    echo ""
    rm $rfc_file
  fi
done

