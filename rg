#autoload
#based on <http://peadrop.com/blog/category/computers/linux/>
filepat="$1"
pat="$2"
shift 2
noglob grep -IEr --include=$filepat $pat ${@:-.}
