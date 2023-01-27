FROM node:alpine

# Ensure everything up-to-date
RUN apk update
RUN apk upgrade

# Install latest stable chrome
RUN apk add chromium
