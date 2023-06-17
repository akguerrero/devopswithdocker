FROM alpine:3.18.2
WORKDIR /usr/src/app
COPY . .
RUN apk add --update --no-cache npm && \
    npm install && npm audit fix --force && \
    npm run build && npm install -g serve && \
    adduser -D appuser ; exit 0
EXPOSE 5000
USER appuser
CMD ["serve","-s","-n","-l","5000","build"]