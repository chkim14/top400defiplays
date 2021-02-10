FROM node:12.18.2-alpine

  WORKDIR /usr/app

  # --- BUILD DEPS -------------------------------------------
  FROM base AS build_deps

  COPY package*.json ./

  RUN npm install --quiet --unsafe-perm --no-progress

  COPY . .

  EXPOSE 8080

  CMD [ "npm", "start" ]

  
