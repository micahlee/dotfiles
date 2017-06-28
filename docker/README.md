# Aliases and Helpers for Docker

### Installation
Link to this file by adding the path into your `~/.zshrc` or `~/.bashrc` file:

```bash
source $HOME/dotfiles/docker/docker.zsh
```

### Commands

Display all containers (`docker ps -a`):
```bash
$ dl
```
This command shows both active running and stopped containers.

Remove a container (`docker rm -f container-name`)
```bash
$ dr container-name
```
This command includes the `-f` flag, so it will stop and remove a container if it's running, or just remove the container if stopped.

Step into a container (`docker exec -it container-name /bin/bash`)
```bash
$ de container-name
```
This command steps into a running container and drops you into a bash shell.
