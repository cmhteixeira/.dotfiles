#!/bin/bash

# Determines the parent folder of this installation script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$script_dir/create-symlinks.sh