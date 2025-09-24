# FROM  --platform=linux/amd64 node:10-alpine
FROM public.ecr.aws/p4o1l8g0/node-image

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ] 







