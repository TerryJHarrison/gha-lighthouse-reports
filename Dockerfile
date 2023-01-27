FROM node:alpine

# Ensure everything up-to-date
RUN apk update
RUN apk upgrade

# Install latest stable chrome
RUN wget -o ./google-chrome-stable.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apk add --allow-untrusted ./google-chrome-stable.deb
