FROM ubuntu:latest

# Ensure everything up-to-date
RUN sudo apt update
RUN sudo apt upgrade

# Install node
RUN sudo apt install nodejs

# Install latest stable chrome
RUN wget -o /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt install /tmp/google-chrome-stable_current_amd64.deb
