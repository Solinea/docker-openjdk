# vim:set ft=dockerfile:

FROM solinea-docker-community.artifactoryonline.com/debian:jessie

MAINTAINER Luke Heidecke <luke@solinea.com>

RUN pkgList=' \
    openjdk-7-jre \
  ' \
  && apt-get update -y -q -q \
  && apt-get install --no-install-recommends -y -q $pkgList \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
