# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Use ARG to accept build-time variables
ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_NAME

# Set environment variables
ENV WORDPRESS_DB_HOST=${WORDPRESS_DB_HOST}
ENV WORDPRESS_DB_USER=${WORDPRESS_DB_USER}
ENV WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}
ENV WORDPRESS_DB_NAME=${WORDPRESS_DB_NAME}

# Install additional packages, copy themes/plugins if necessary
# COPY ./wordpress/wp-config.php /var/www/html/wp-config.php
# COPY ./your-theme-path /var/www/html/wp-content/themes/your-theme
# COPY ./your-plugin-path /var/www/html/wp-content/plugins/your-plugin
RUN chown -R www-data:www-data /var/www/html
# Expose the necessary port
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]

