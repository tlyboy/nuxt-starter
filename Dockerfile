FROM node:lts-alpine
COPY ./ /app
WORKDIR /app
RUN corepack enable
RUN pnpm install
RUN pnpm run build

FROM node:lts-alpine
RUN mkdir /app
COPY --from=0 /app/.output /app
CMD [ "node", "/app/server/index.mjs" ]
EXPOSE 3000
