# Pull the Node.js Docker image:
FROM node:22-alpine AS builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install application dependencies
RUN npm i
RUN npm i serve front-matter marked@latest highlight.js@latest

# Copy the rest of the application source code
COPY . .

# Build the application
RUN npm run build

FROM nginx:latest

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration to serve static files
COPY nginx.conf /etc/nginx/conf.d/static-site.conf

# Copy the built static files from the builder stage
COPY --from=builder /app/public /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]