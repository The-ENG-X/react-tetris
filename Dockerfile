# Stage 1: Node.js base image to build the app
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY ./ ./
RUN npm run build
