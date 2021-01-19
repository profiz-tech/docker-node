FROM node:14.15.4-alpine3.12

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_REF

LABEL maintainer="Profiz<contato@profiz.com>" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$BUILD_VERSION \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0.0-rc1" \
  org.label-schema.vcs-url="https://github.com/profiz/node.git" \
  org.label-schema.name="profiz/node" \
  org.label-schema.vendor="Profiz" \
  org.label-schema.description="Docker image used to run Node applications in Profiz"

# Using git to install some npm dependencies directly from repositories
RUN apk add --no-cache git