emulate -L zsh
setopt noextendedglob
blah=~/.znc/users/"$1"/moddata/log/"$2"
shift 2
if (($# > 0)); then
	$* ${~blah}
else
	less ${~blah}
fi
