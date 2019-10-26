FROM debian:10

# This prints "SHLVL: 1"
RUN ["bash", "-c", "echo SHLVL: $SHLVL"]
# Why does this error? Is it a character escaping problem by the combination of Dockerfile + Bash?
RUN ["bash", "-c", "bash -c 'echo SHLVL: \$SHLVL'"]
