export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
gg(){
  local selected_repo=$(ghq list -p | fzf)
  if [ -n "$selected_repo" ]; then
    cd $selected_repo
  fi
}

ff(){
  local selected_file=$(git ls-files | fzf)
  if [ -n "$selected_file" ]; then
      echo $selected_file | xargs -o $*
  fi
}
