FROM debian:10

RUN echo $SHLVL
RUN bash -c "echo \$SHLVL"
RUN bash -c "bash -c 'echo \$SHLVL'"