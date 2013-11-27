ggrep() {
  if [ "$1" = "-l" ]; then
    git grep -n "$2" | grep -v _script/tags | sed 's/:.*$//g' | uniq
  elif [ "$1" = "-v" ]; then
    vim `git grep -n "$2" | grep -v _script/tags | sed 's/:.*$//g' | uniq`
  else
    git grep -n "$1" | grep -v _script/tags | less 
  fi
}

alias ggrep=ggrep
