FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY curler.sh .
RUN chmod +x curler.sh && apt-get update && apt-get -y install curl
CMD ./curler.sh