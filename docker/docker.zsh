alias dl='docker ps -a'

function docker_rm() {
  docker rm -f "$@"
}
alias dr="docker_rm"

function docker_exec() {
  docker exec -it "$@" /bin/bash
}
alias de="docker_exec"
