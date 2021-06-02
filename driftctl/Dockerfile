FROM cloudskiff/driftctl:v0.9.0

ARG GIT_REF

LABEL maintainer="Yves Brissaud <yves.brissaud@gmail.com>"

LABEL org.opencontainers.image.title="driftctl" \
      org.opencontainers.image.description="Measures infrastructure as code coverage, and tracks infrastructure drift." \
      org.opencontainers.image.documentation="https://driftctl.com" \
      org.opencontainers.image.source="https://github.com/eunomie/dockerfiles" \
      org.opencontainers.image.revision="${GIT_REF}"

LABEL com.docker.auto.rm="true" \
      com.docker.auto.name="driftctl" \
      com.docker.auto.tty="true" \
      com.docker.auto.env="AWS_ACCESS_KEY_ID,AWS_SECRET_ACCESS_KEY" \
      com.docker.auto.mount-local-dir-to="/app,readonly" \
      com.docker.auto.mount="type=bind,source=~/.driftctl,target=/root/.driftctl"
