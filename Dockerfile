FROM node:20
EXPOSE 3000
WORKDIR /app
COPY package.json package-lock.json ./ 
RUN npm install
COPY . . 
RUN apt-get install -y curl
RUN curl -k -O https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
ENTRYPOINT ["npm", "run", "start"]
