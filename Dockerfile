FROM node:19-buster

# Ensure everything up-to-date
RUN sudo apt-get update
RUN sudo apt-get upgrade

# Install latest stable chrome
RUN wget -o /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt install /tmp/google-chrome-stable_current_amd64.deb
