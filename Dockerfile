# pull official base image
FROM node

# set working directory
WORKDIR /app-b

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app-b/node_modules/.bin:$PATH

# install app dependencies
COPY package.json package-lock.json ./
RUN npm install

# add app
COPY . ./

EXPOSE 4000
# start app
CMD ["npm", "start"]
