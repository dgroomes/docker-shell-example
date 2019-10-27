FROM debian:10

# This should print 2 because the execution context is two levels deep in Bash. But it prints 1! Why? A character
# escaping issue?
RUN bash -c "bash -c 'echo \$SHLVL; echo \$BASH_SUBSHELL'"