FROM node:12-slim

WORKDIR /app 

COPY package.json /app

RUN npm install 

COPY . /app

CMD ["npm", "start"]

# docker build -t node-docker .
# docker run -it -p 9000:3000 node-docker
# docker run -d -p 9000:3000 node-docker
# docker run -it -p 9000:3000 -v $(pwd) node-docker
# docker run -it -p 9000:3000 -v $(pwd)/app node-docker

