FROM node:14.11.0-slim

WORKDIR /usr/src/app

# Make the terminal pretty.
RUN echo "PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '" >> /etc/bash.bashrc \
    && echo "export TERM=xterm" >> /etc/bash.bashrc

ENV HISTFILE /root/dotfiles/.bash_history

# Expose ports
EXPOSE 8000

# Copy the app.
COPY . /usr/src/app


