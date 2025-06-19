# Use official Nginx image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx files
RUN rm -rf *

# Copy custom HTML and assets
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
