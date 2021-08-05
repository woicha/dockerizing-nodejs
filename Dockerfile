# Dockerfile

FROM node:lts-buster

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY addressbook/ .
RUN npm install

RUN adduser --system app

RUN chown -R app /opt/app
USER app

EXPOSE 3000

CMD [ "npm", "run", "pm2" ]
