FROM node:alpine

# Ensure everything up-to-date
RUN apt-get update -y

# Install latest stable chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb
