# Use an official Node.js runtime as base image
FROM node:18
# Set working directory inside the container
WORKDIR /usr/src/app
# Copy package.json and install dependencies
COPY package.json ./
RUN npm install
# Copy the rest of the application files
COPY . .
# Expose port 3000
EXPOSE 3000
# Define the command to run app
CMD ["npm", "start"]