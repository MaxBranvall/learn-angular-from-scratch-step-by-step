# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts
RUN npm install

# If building for prod, run this
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 4200

# Start application
CMD ng serve --host 0.0.0.0