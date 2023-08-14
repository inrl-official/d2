FROM quay.io/inrlwabot/inrl:latest
RUN git clone https://github.com/inrl-official/inrl-bot-md /root/inrl
WORKDIR /root/inrl/
EXPOSE 3000
CMD ["npm", "start"]
