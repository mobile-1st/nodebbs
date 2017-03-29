FROM node:4.8.1

WORKDIR /bbs
ADD package.json /bbs
RUN npm install
ADD . /bbs
RUN make build

CMD []
ENTRYPOINT ["node", "app.js"]