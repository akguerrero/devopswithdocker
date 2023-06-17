FROM docker:git
WORKDIR /usr/src/app
COPY builder.sh .
RUN chmod +x builder.sh
ENTRYPOINT ["/usr/src/app/builder.sh"]