FROM ubuntu:14.10

MAINTAINER Rob Haswell <me@robhaswell.co.uk>

RUN apt-get -qq update
RUN apt-get -qqy upgrade

RUN apt-get -qy install graphviz

RUN adduser --system dot
USER dot

ENTRYPOINT ["/usr/bin/dot"]
