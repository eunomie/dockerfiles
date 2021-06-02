FROM python:3-slim

ARG GIT_REF

LABEL maintainer="Yves Brissaud <yves.brissaud@gmail.com>"

LABEL org.opencontainers.image.title="serve" \
      org.opencontainers.image.description="small HTTP server" \
      org.opencontainers.image.source="https://github.com/eunomie/dockerfiles" \
      org.opencontainers.image.revision="${GIT_REF}"

LABEL com.docker.auto.rm="true" \
      com.docker.auto.name="serve" \
      com.docker.auto.tty="true" \
      com.docker.auto.publish="8000:8000" \
      com.docker.auto.mount-local-dir-to="/src"

EXPOSE 8000

WORKDIR /src

CMD [ "python", "-m", "http.server" ]
