FROM debian:10

# This should print nothing because the default shell is /bin/sh not Bash (SHLVL is a Bash thing)
RUN echo $SHLVL
# This should print 1 because the execution context is one level deep in Bash
RUN bash -c "echo \$SHLVL; echo \$BASH_SUBSHELL; echo \$(echo \$BASH_SUBSHELL)"
# This should print 2 because the execution context is two levels deep in Bash. But it prints 1! Why? A character
# escaping issue?
RUN bash -c "bash -c 'echo \$SHLVL; echo \$BASH_SUBSHELL'"