FROM alpine:3.18.2
WORKDIR /usr/src/app
COPY . .
#ENV PATH="$PATH:/usr/src/app/go/bin/"
RUN apk add --update --no-cache go &&\
    go build && \
    adduser -D appuser
EXPOSE 8080
USER appuser
CMD ["./server"]