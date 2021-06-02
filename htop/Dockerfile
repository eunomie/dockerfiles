FROM alpine:latest

ARG GIT_REF

LABEL maintainer="Yves Brissaud <yves.brissaud@gmail.com>"

LABEL org.opencontainers.image.title="htop" \
      org.opencontainers.image.description="an interactive process viewer" \
      org.opencontainers.image.documentation="https://htop.dev/" \
      org.opencontainers.image.source="https://github.com/eunomie/dockerfiles" \
      org.opencontainers.image.revision="${GIT_REF}"

LABEL com.docker.auto.rm="true" \
      com.docker.auto.interactive="true" \
      com.docker.auto.tty="true" \
      com.docker.auto.pid="host" \
      com.docker.auto.net="none" \
      com.docker.auto.name="htop"

RUN apk --no-cache add \
	htop

CMD [ "htop" ]
