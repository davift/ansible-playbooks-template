function box_out() {
  input_char=$(echo "$@" | wc -c)
  line=$(for i in `seq 0 $input_char`; do printf "─"; done)
  tput bold
  tput setaf 4
  space=${line//─/ }
  echo " ┌${line}┐"
  printf ' │ ' ; echo -n "$@"; printf "%s\n" ' │';
  echo " └${line}┘"
  tput sgr 0
}

function box_exited() {
  tput bold
  tput setaf 2
  echo " ┌────────┐"
  echo " │ Exited │"
  echo " └────────┘"
  tput sgr0
}

function box_failed() {
  tput bold
  tput setaf 1
  echo " ┌────────┐"
  echo " │ Failed │"
  echo " └────────┘"
  tput sgr0
  exit 1
}

function box_dryrun() {
  tput bold
  tput setaf 3
  echo " ┌─────────┐"
  echo " │ Dry Run │"
  echo " └─────────┘"
  tput sgr0
}

function box_run() {
  tput bold
  tput setaf 1
  echo " ┌─────────┐"
  echo " │   Run   │"
  echo " └─────────┘"
  tput sgr0
}