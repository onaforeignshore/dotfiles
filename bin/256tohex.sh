#!/usr/bin/env zsh
# This function calculates an rgb value for the given color index
# Colors 0-15 are terminal mappings, and therefore don't have a set color
#
# Parameters:
#   * $1 Color: string - the color index to change into rrggbb format
function c256toRGB() {
  local index_R=0
  local index_G=0
  local index_R=0
  local rgb_R=0
  local rgb_G=0
  local rgb_B=0
  local rgb

  if [[ "$1" -lt  "16" ]]; then # default terminal colors
    echo $1
  elif [[ "$1" -lt "232" ]]; then # RGB colors
    rgb_R=$(( (($1 - 16) / 36) * 51 ))
    rgb_G=$(( ((($1 - 16) % 36) / 6) * 51 ))
    rgb_B=$(( (($1 - 16) % 6) * 51 ))
    printf "%02x%02x%02x" $rgb_R $rgb_G $rgb_B
  elif [[ "$1" -gt "231" ]]; then # gray scale colors
    rgb=$(( ($1 - 232) * 10 + 8 ))
    printf "%02x%02x%02x" $rgb $rgb $rgb
  fi
}
c256toRGB $1
