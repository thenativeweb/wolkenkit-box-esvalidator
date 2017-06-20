FROM thenativeweb/wolkenkit-box-node:1.0.1
MAINTAINER the native web <hello@thenativeweb.io>

RUN npm install -g eslint@3.19.0 --production --silent

ADD ./eslint/ /eslint/
RUN chmod a+x /eslint/*.sh

CMD [ "/eslint/run.sh" ]
