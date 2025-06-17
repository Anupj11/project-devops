# Use the official Nginx image as the base
FROM nginx:latest

# Remove default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy the static website files into the container
COPY ../app/index.html /usr/share/nginx/html/

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx when container runs
CMD ["nginx", "-g", "daemon off;"]
