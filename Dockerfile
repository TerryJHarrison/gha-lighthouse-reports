FROM ubuntu:latest

# Ensure everything up-to-date
RUN apt-get update -y
RUN apt-get upgrade -y

# Install tools
RUN apt-get install wget -y
RUN wget https://deb.nodesource.com/setup_14.x
RUN sh ./setup_14.x
RUN apt-get install -y nodejs
RUN apt-get install npm -y
RUN npm install lighthouse -g

# Install latest stable chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install ./google-chrome-stable_current_amd64.deb -y
