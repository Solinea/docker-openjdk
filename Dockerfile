# vim:set ft=dockerfile:

FROM solinea-docker-community.artifactoryonline.com/debian:jessie

MAINTAINER Luke Heidecke <luke@solinea.com>

ENV JAVA_MAJOR_VER 8

RUN pkgList=' \
    openjdk-${JAVA_MAJOR_VER}-jre \
  ' \
  && apt-get update -y -q -q \
  && apt-get install --no-install-recommends -y -q $pkgList \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-${JAVA_MAJOR_VER}-openjdk-amd64
