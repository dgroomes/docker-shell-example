FROM debian:10

COPY debug.sh .

RUN ./debug.sh "baseline"

RUN bash debug.sh "bash"

RUN ["bash", "debug.sh", "exec form"]

CMD cat /debug_output