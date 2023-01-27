FROM ubuntu:latest

# Ensure everything up-to-date
RUN apt update -y
RUN apt upgrade -y

# Install node and tools
RUN apt install nodejs npm wget -y

# Install latest stable chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb -y
