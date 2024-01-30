# Stage 1: Node.js base image to build the app
FROM node:lts as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY ./ ./
RUN npm run build
# Stage 2: Nginx to run the app
FROM nginx:alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx" , "-g" , " daemon off;" ]
