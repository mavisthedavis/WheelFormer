#!/bin/sh
printf '\033c\033]0;%s\a' The wheels
base_path="$(dirname "$(realpath "$0")")"
"$base_path/The wheels.x86_64" "$@"
