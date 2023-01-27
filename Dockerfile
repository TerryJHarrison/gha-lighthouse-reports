FROM node:alpine

# Ensure everything up-to-date
RUN apk update -y

# Install latest stable chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apk add -y ./google-chrome-stable_current_amd64.deb
