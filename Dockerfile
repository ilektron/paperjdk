FROM ubuntu:21.10

MAINTAINER  Stephen Farnsworth <ilektron@ilektronx.com>

RUN apt-get update
RUN apt-get install -y software-properties-common wget
RUN wget -O- https://apt.corretto.aws/corretto.key | apt-key add -
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'
RUN apt-get update
RUN apt-get install -y java-17-amazon-corretto-jdk
RUN apt-get clean
WORKDIR /tmp

ENV JAVA_HOME /usr/lib/jvm/java-17-amazon-corretto/
RUN export JAVA_HOME

