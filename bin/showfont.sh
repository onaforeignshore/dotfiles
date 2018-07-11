#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

printAll() {
  echo "Generating file..."
  echo "UNICODE PRIVATE CHARACTER LIST" > unicode.txt
  echo "" >> unicode.txt
  declare -a x
  local character
  x=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
  for a in {0..15}; do
    for b in {0..15}; do
      for c in {2..15}; do
        for d in {0..15}; do
          character="\u${x[$a]}${x[$b]}${x[$c]}${x[$d]}"
          echo -en "${character}" >> unicode.txt
          [[ $d < 15 ]] && echo -en "," >> unicode.txt
        done
        echo -en "\n" >> unicode.txt
        for d in {0..15}; do
          echo -en "${x[$a]}${x[$b]}${x[$c]}${x[$d]}" >> unicode.txt
          [[ $d < 15 ]] && echo -en "," >> unicode.txt
        done
        echo -en "\n" >> unicode.txt
      done
    done
  done
  echo "Done!"
}

printAll
