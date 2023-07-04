#!/usr/bin/env bash

set -euo pipefail

# Default values
dry_run=
language=""
version=""

# Function to display usage/help
usage() {
  cat << EOF
  Usage: prune [-n[--help] [--dry-run] <language> <version>
  Uninstall all old (i.e. not latest) matching versions of language.

  --dry-run -n  Show uninstall commands that would be run
  --help    -h  This help
EOF
}

# Parse command-line options
case "$OSTYPE" in
  darwin*) getopt=/usr/local/opt/gnu-getopt/bin/getopt ;;
  *) getopt=getopt ;;
esac

ARGS=$($getopt -o hn --long help,dry-run -n "$0" -- "$@")
eval set -- "$ARGS"

# Extract options and their arguments
while true; do
  case "$1" in
    -h | --help )
      usage
      exit 0
      ;;
    -d | --dry-run )
      dry_run=echo
      shift
      ;;
    -- )
      shift
      break
      ;;
    * )
      echo "Invalid option: $1"
      usage
      exit 1
      ;;
  esac
done

# Extract positional parameters
if [ $# -eq 2 ]; then
  language=$1
  version=$2
else
  usage
  exit 1
fi

latest=$(asdf latest $language $version)
others=$(asdf list  $language $version | grep -v $latest)

for o in $others; do
  $dry_run asdf uninstall $language $o
done