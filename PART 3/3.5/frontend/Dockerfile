FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt update && apt -y install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt install -y nodejs
RUN node -v && npm -v
COPY . .
RUN npm install && npm run build && npm install -g serve
EXPOSE 5000
RUN useradd -m appuser
USER appuser
CMD ["serve","-s","-n","-l","5000","build"]