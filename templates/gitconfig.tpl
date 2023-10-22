[color]
  diff = auto
  status = auto
  branch = auto
  interactive = auto
[pager]
  diff = delta
  log = delta
  reflog = delta
  show = delta
[interactive]
  diffFilter = delta --color-only --features=interactive
[core]
  quotepath = false
  precomposeunicode = true
  excludesfile = ~/.gitignore
  attributesfile = ~/.gitattributes
  editor = nvim
[alias]
  s = status --short --branch
  wd = diff --word-diff
  tr = log --graph --pretty='format:%C(yellow)%h%Creset %s %Cgreen(%an)%Creset %Cred%d%Creset'
  tree = log --graph --pretty=oneline --abbrev-commit --decorate
  cof = !"f(){ local branch=$(git branch | fzf | awk '{print $1}'); if [ -n $branch ]; then git checkout $branch; fi }; f"
  cf = !git branch | fzf | xargs -r git checkout
  r = !git reflog --since '1weeks ago' | grep 'checkout:' | fzf | awk '{print $NF}' | xargs -r git checkout
  fix = !git commit --amend --no-edit
  find-merge = "!sh -c 'commit=$0 && branch=${1:-HEAD} && (git rev-list $commit..$branch --ancestry-path | cat -n; git rev-list $commit..$branch --first-parent | cat -n) | sort -k2 -s | uniq -f1 -d | sort -n | tail -1 | cut -f2'"
