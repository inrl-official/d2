FROM quay.io/inrlwabot/inrl:latest
RUN git clone https://github.com/inrl-official/inrl-bot-md /root/inrl
WORKDIR /root/inrl/
RUN npm install pm2 -g
RUN yarn install --network-concurrency 1
EXPOSE 3000
CMD ["npm", "start"]
