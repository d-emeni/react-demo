# Stage 1: Build the React app
FROM node:22-alpine AS builder
WORKDIR /app

# Copy files and install dependencies
COPY . .
RUN npm install && npm run build

# Stage 2: Serve the app with Nginx
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose the port Nginx runs on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
