alias dl='docker ps -a'

function docker_rm() {
  docker rm -f "$@"
}
alias dr="docker_rm"

function docker_exec() {
  docker exec -it "$@" /bin/bash
}
alias de="docker_exec"

alias docker-cleanup="docker_cleanup"

function docker_cleanup {
  docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
}

function docker_compose() {
  docker-compose $@
}

alias dc="docker_compose"

function docker() {
  docker $@
}

alias d="docker"

function remove_all_docker_containers() {
  dr $(dl -aq)
}
alias dra="remove_all_docker_containers"
