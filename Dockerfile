# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Set environment variables for WordPress
# Use ARG for build-time variables that will be replaced by GitHub secrets in the CI/CD pipeline
ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_NAME

# Set the environment variables with the ARG values
ENV WORDPRESS_DB_HOST=${WORDPRESS_DB_HOST}
ENV WORDPRESS_DB_USER=${WORDPRESS_DB_USER}
ENV WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}
ENV WORDPRESS_DB_NAME=${WORDPRESS_DB_NAME}

# Optional: Install any additional requirements or extensions
# RUN apt-get update && apt-get install -y example-package

# Copy any custom themes or plugins into the image
# COPY ./your-theme-path /var/www/html/wp-content/themes/your-theme
# COPY ./your-plugin-path /var/www/html/wp-content/plugins/your-plugin

# Expose port 80 to the host so that WordPress can be accessed from outside the container
EXPOSE 80

# When running a container, this command will start Apache and the necessary services
CMD ["apache2-foreground"]
