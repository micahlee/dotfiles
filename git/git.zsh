git config --global alias.co checkout
git config --global alias.b branch

function git_status() {
  git status $@
}
alias gs="git_status"