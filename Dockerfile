FROM debian:stable

COPY install.sh .

RUN apt-get update \
 && apt-get install -y --force-yes \
      git \
      wget \
 && ./install.sh \
 && rm ./install.sh

EXPOSE 8080
CMD /code-server/bin/code-server --auth none --bind-addr 0.0.0.0:8080
