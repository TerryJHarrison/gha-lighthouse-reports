FROM ubuntu:latest

# Ensure everything up-to-date
RUN apt update -y
RUN apt upgrade -y

# Install node
RUN apt install nodejs

# Install latest stable chrome
RUN wget -o /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install /tmp/google-chrome-stable_current_amd64.deb -y
