FROM registry.docker-cn.com/zixia/wechaty:latest

RUN cd /wechaty && npm install marked@^0.3.3  body-parser express && sudo rm -fr /tmp/* ~/.npm

ENV NODE_PATH /wechaty/node_modules:$NODE_PATH

COPY . /bot

