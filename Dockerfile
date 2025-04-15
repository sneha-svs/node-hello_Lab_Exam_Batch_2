# Use official Node.js base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the port the app runs on
EXPOSE 3001

# Run the application
CMD ["node", "index.js"]
