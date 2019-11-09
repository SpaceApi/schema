FROM node:13-alpine

WORKDIR /schemas
COPY ./*.json /schemas/

RUN npm install -g docson@v2.1.0

EXPOSE 3000

RUN adduser app -S -u 142
USER app

CMD ["docson", "-d", "/schemas"]
