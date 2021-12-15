#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
filepath=${SCRIPT_DIR}/main


update_tmux_option() {
  local option option_value
  option="$1"
  option_value="$(tmux show-option -gqv "$option")"
  option_value=${option_value//\#\{Sessions\}/\#(${filepath})}
  option_value=${option_value//\#\{sessions\}/\#(${filepath} short)}
  tmux set-option -gq "$option" "$option_value"
}


main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}


main
