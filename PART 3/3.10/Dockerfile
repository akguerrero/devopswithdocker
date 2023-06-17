# Stage 1
FROM node:16 AS first_stage
WORKDIR /app
COPY . .
RUN npm install

# Stage 2: removing source code
FROM node:16
WORKDIR /app
RUN useradd -m appuser
COPY --from=first_stage /app/package.json /app/package-lock.json /app/index.js ./
COPY --from=first_stage /app/node_modules ./node_modules
EXPOSE 8080
USER appuser
CMD ["node", "index.js"]