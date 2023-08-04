FROM beevelop/ionic:latest AS ionic

WORKDIR /usr/src/app

RUN pwd
RUN ls

COPY ./udagram-frontend/package*.json ./

RUN pwd
RUN ls
RUN npm --verbose ci

COPY . .
RUN ionic build

FROM nginx:alpine

COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html