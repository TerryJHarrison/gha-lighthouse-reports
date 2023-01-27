FROM ubuntu:latest

# Ensure everything up-to-date
RUN apt update -y
RUN apt upgrade -y

# Install tools
RUN apt install wget -y
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
RUN apt install npm -y
RUN npm install lighthouse -g

# Install latest stable chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install ./google-chrome-stable_current_amd64.deb -y
