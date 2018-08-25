FROM openjdk:11-slim

MAINTAINER Carles Amigó, fr3nd@fr3nd.net

RUN apt-get update && apt-get install -y \
      wget \
      && rm -rf /usr/share/doc/* && \
      rm -rf /usr/share/info/* && \
      rm -rf /tmp/* && \
      rm -rf /var/tmp/*

ENV YUICOMPRESSOR_VERSION 2.4.8

RUN wget -O yuicompressor.jar https://github.com/yui/yuicompressor/releases/download/v${YUICOMPRESSOR_VERSION}/yuicompressor-${YUICOMPRESSOR_VERSION}.jar

CMD java -jar yuicompressor.jar
