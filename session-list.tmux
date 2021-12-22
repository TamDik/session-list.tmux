#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
filepath=${SCRIPT_DIR}/main


update_tmux_option() {
  local option option_value
  option="$1"
  option_value=$(tmux show-option -gqv "$option" \
                | sed -r "s|#\{Sessions[^}]*\}|#\\(${filepath})|g" \
                | sed -r "s|#\{sessions([^}]*)\}|#\\(${filepath} short\1)|g")
  tmux set-option -gq "$option" "$option_value"
}


main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}


main
