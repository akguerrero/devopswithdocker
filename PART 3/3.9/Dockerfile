#stage 1
FROM ubuntu:20.04 as first_stage
WORKDIR /usr/src/app
COPY . .
ENV PATH="$PATH:/usr/src/app/go/bin/"
ENV CGO_ENABLED=0
RUN apt update && apt -y install wget && \
    wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz && \
    tar -xzf go1.16.7.linux-amd64.tar.gz && \
    go build -o server

#stage 2
FROM scratch
COPY --from=first_stage /usr/src/app/server /server
EXPOSE 8080
CMD ["/server"]