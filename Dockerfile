FROM debian:10

COPY debug.sh .

RUN . ./debug.sh && debug "baseline"

RUN bash -c ". ./debug.sh && debug 'bash'"

RUN ["bash", "-c", ". ./debug.sh && debug 'exec form'"]

RUN ["bash", "--login", "-c", ". ./debug.sh && debug 'with --login option'"]

SHELL ["bash", "-c"]
RUN . ./debug.sh && debug "after SHELL instruction"
# Why isn't this SHLVL=2?
RUN bash -c ". ./debug.sh && debug 'bash after SHELL instruction'"
# Why isn't this SHLVL=3?
RUN bash -c "bash -c \". ./debug.sh && debug 'bash in bash after SHELL instruction'\""

# Basline.
RUN ["bash", "-c", "echo SHLVL: $SHLVL"]
# Why doesn't this work?
#RUN ["bash", "-c", "bash -c 'echo SHLVL: \$SHLVL'"]

SHELL ["bash", "--login", "-c"]
RUN . ./debug.sh && debug "after SHELL instruction with -login"

CMD cat /debug_output
