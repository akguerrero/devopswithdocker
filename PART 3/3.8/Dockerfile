#Stage 1
FROM ubuntu:20.04 as first_stage
WORKDIR /usr/src/app
COPY . .
RUN apt update && apt -y install curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt install -y nodejs && \
    npm install && npm run build

#Stage 2
FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY --from=first_stage /usr/src/app/build ./build
RUN apt update && apt -y install curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt install -y nodejs && \
    npm install -g serve
EXPOSE 5000
CMD ["serve","-s","-n","-l","5000","build"]