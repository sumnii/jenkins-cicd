FROM node:18-alpine
WORKDIR /app
ADD . .
RUN yarn install
RUN yarn run build
EXPOSE 3000
CMD ["yarn", "run", "start:prod"]

