#autoload
#based on <http://peadrop.com/blog/category/computers/linux/>
local opts filepat pat
if [[ "$1" == -* ]]; then
  opts="$1"
  filepat="$2"
  pat="$3"
  shift 3
else
  filepat="$1"
  pat="$2"
  shift 2
fi
grep -IEnr $opts --color=auto --include=$filepat $pat ${@:-.}
