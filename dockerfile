# Use an official Node.js runtime as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the rest of the project files to the working directory
COPY . .

# Install project dependencies
RUN npm i

# Turbo stuff
RUN turbo build lint

# Expose the port your Next.js app will run on
EXPOSE 3100

# Define the command to start your Next.js app
CMD ["turbo", "dev"]