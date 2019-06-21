############################################################
# Dockerfile to build NodeJS 10 Installed Containers
# Based on Node:10
############################################################

FROM node:10

EXPOSE 2018 2019 2020

# Copy application folder and configurations
COPY . /app

# Create data directory
WORKDIR /app

# PYTHON INSTALL
RUN apt-get update && apt-get install -y python-pip && pip install -r requirements.txt

# NPM INSTALL
RUN npm install -g concurrently sass && npm install -f

CMD ["npm", "start"]
