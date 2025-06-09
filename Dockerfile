FROM quay.io/gurusensei/gurubhay:latest

RUN git clone https://github.com/Sylivanu/unicorn-md /root/unicorn

WORKDIR /root/unicorn/

RUN apk add --no-cache vips-dev gcc g++ make && \
    npm install --platform=linuxmusl

EXPOSE 5000

CMD ["npm", "start"]
