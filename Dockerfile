FROM debian:10

COPY debug.sh .

RUN . ./debug.sh && debug "baseline"

RUN bash -c ". ./debug.sh && debug 'bash'"

RUN ["bash", "-c", ". ./debug.sh && debug 'exec form'"]

RUN ["bash", "--login", "-c", ". ./debug.sh && debug 'with --login option'"]

SHELL ["bash", "-c"]
RUN . ./debug.sh && debug "after SHELL instruction"

SHELL ["bash", "--login", "-c"]
RUN . ./debug.sh && debug "after SHELL instruction with -login"

CMD cat /debug_output