# docker-shell-example

Illustrating the behavior of file sourcing behavior in the shell in Docker.

For example:

* When executing `RUN` instructions in a Dockerfile, does the shell source `/etc/profile`? ? `~/.profile`?
* When executing the `SHELL` instruction in a Dockerfile, does the shell source `~/.bashrc`?
* etc...

### Run

* `./go.sh` to build and run the Docker container
* `./go.sh attach` to build, run and attach to the Docker container