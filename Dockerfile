# Use a small Nginx base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the contents of the local src directory to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Command to start Nginx and keep the container running
CMD ["nginx", "-g", "daemon off;"]