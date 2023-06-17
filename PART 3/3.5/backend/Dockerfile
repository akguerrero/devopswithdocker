FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt update && apt -y install wget
COPY . .
RUN wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
RUN tar -xzf go1.16.7.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/src/app/go/bin/"
RUN go build
EXPOSE 8080
RUN useradd -m appuser
USER appuser
CMD ["./server"]