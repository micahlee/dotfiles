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

function docker_compose_shortcut() {
  docker-compose $@
}

alias dc="docker_compose_shortcut"

function docker_shortcut() {
  docker $@
}

alias d="docker_shortcut"

function remove_all_docker_containers() {
  dr $(dl -aq)
}
alias dra="remove_all_docker_containers"
