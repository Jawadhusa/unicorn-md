FROM quay.io/gurusensei/gurubhay:latest

RUN git clone https://github.com/Sylivanu/unicorn-md /root/unicorn

WORKDIR /root/unicorn/

# In your Dockerfile
RUN npm install --platform=linuxmusl --network-timeout=100000
EXPOSE 5000

CMD ["npm", "start"]
