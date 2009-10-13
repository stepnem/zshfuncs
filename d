#mv -t ~/.Trash "$@" (my original naive implementation ;)
#autoload


# based on <http://adamspiers.org/computing/zsh/files/dot-zsh/functions/srm>

if [[ -z "$TRASHCAN" ]]; then
  echo "TRASHCAN not defined in environment, aborting." >&2
  return 1
fi

if [[ $# -eq 0 ]]; then
  cat <<EOF >&2
Usage: $0 <files to trash>
TRASHCAN is currently $TRASHCAN
EOF
  return 1
fi

if cp -v -a --parents --target-directory="$TRASHCAN" "$@"; then
  rm -vrf "$@"
else
  echo "Safe remove to $TRASHCAN failed." >&2
  return 1
fi

