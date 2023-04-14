# Base image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json /app
RUN npm ci

# Bundle app source
COPY . /app

# Set environment variables
#ENV DB_CONNECTION_STRING=postgresql://postgres:ijhtA2ZUybjZTdY6XE6hdFNvsdz4Z56D@postgres:5432/vtysDataBaseProject
#ENV PORT=3000

# Expose port
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
