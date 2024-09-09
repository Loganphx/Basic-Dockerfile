FROM alpine:latest
ARG name="Chad"
RUN echo "Hello, ${name}!"
