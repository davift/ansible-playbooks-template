#!/usr/bin/bash

source boxes.sh

# IsUbuntu=$(whoami)
# Makes sure the playbooks are execute by the proper user that has the appropriated SSH Keys.
# if [ $IsUbuntu != 'ubuntu' ]
# then
#   box_out "Switch to the correct user with: sudo su - ubuntu"
#   box_failed;
# fi

box_out "AVAILABLE PLAYBOOKS"

PS3='Playbook number: '
options=("Exit")

# Populate options with playbook files in the current directory
for playbook in *.run; do
    if [[ -f $playbook ]]; then
        options+=("$playbook")
    fi
done

select opt in "${options[@]}"
do
    case $opt in
        "Exit")
            break
            ;;
        *)
            # Check if the selected option is a valid file
            if [[ -f $opt ]]; then
                ./$opt
            else
                echo "Invalid option"
            fi
            ;;
    esac
done

box_exited

exit 0
