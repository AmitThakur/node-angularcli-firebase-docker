FROM node:8.11.3

USER root

RUN mkdir /home/.npm-global
ENV PATH=/home/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/.npm-global

RUN npm i npm@latest -g
RUN npm install --quiet --no-progress -g @angular/cli@6.2.4 firebase-tools@6.1.1
RUN ng --version
RUN firebase --version

RUN npm cache clean --force
