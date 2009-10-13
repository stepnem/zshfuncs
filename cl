#autoload
emulate -LR zsh
if (( $# < 2 )) || [[ $2 = -* ]]; then
	if (( $# < 2 )); then
		cd "$1" && ls
	else
		cd "$1" && ls $2
	fi
else
	cd "$1" && shift && eval $@
fi
