#!/bin/bash

load_colors(){
  # Colors for bash. See: http://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
  LIGHT_GREEN='\033[0;92m'
  ORANGE='\033[0;33m'
  RED='\033[0;31m'
  # No Color
  RESET='\033[0m'

  FONT_BOLD='\033[1m'
  FONT_RESET='\033[22m'
}

init () {
  load_colors
}

init
