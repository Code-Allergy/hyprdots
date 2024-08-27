alias waybar-reload="killall -SIGUSR2 waybar"
alias cafe='while [ TRUE ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"'
alias sudo="sudo "

# ONLY kitty
alias ssh="kitten ssh"


..() {
    if [ -z "$1" ]; then
        cd ..
    else
        cd `awk "BEGIN {while (c++<$1) printf \"../\"}"`
    fi
}

mkcd() { mkdir -p "$1" && cd "$1"; }

# Find files with extension
# Usage: fext <ext> [max_depth]
fext() {
  if [ -z "${2}" ]; then
    find . -type f -name "*.${1}"
  else
    find . -maxdepth "${2}" -type f -name "*.${1}"
  fi
}

# Find file/directory by substring
# Usage: fn <substring> [max_depth]
fn() {
  if [ -z "${2}" ]; then
    find . -iname "*${1}*"
  else
    find . -maxdepth "${2}" -iname "*${1}*"
  fi
}

# tool quick aliases

# git
alias g="git"
alias gc="git commit"
alias gcm="git commit -m"
alias gr='git rebase'
alias gp='git push'
alias gu='git unstage'
alias gf='git fetch'
alias gco='git checkout'
alias gb='git branch'


alias serve="python3 -m http.server"

# vim motion catch you dingus
alias q='exit'
alias :q='exit'
