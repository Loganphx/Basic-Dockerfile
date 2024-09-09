FROM alpine:latest

# ARG is build time and can be specified with docker build --build-arg name="Chad"
ARG name="Chad"
ENV NAME=$name
# docker container run --env LOG_LEVEL=info basic-dockerfile
ENV LOG_LEVEL = "error"

# Installs Bash since Alpine doesn't native come with it.
#RUN apk add --no-cache bash

# Prints only when building
RUN echo "Hello, ${NAME}!" 

#CMD [ "/bin/sh", "-c", "export" ]

# ENTRYPOINT IS RAN EVERYTIME THE IMAGE RUNS
# ENTRYPOINT echo "Hello, ${NAME}!"
# ENTRYPOINT ["/bin/bash", "-c", "echo Hello, ${NAME}!"]
ENTRYPOINT ["/bin/sh", "-c", " export && echo  && echo Hello, ${NAME}!"]
#CMD ["/bin/sh", "-c", " export && echo  && echo Hello, ${NAME}!"]
