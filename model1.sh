#!/bin/bash

[ -r "$1" ] || { echo "Can't read $1"; exit 1; }

data=$(< "$1")
echo $(( 3 * data )) > "$2"
