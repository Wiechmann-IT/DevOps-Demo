# Use the official WordPress image from Docker Hub
FROM wordpress:latest


# Install additional packages, copy themes/plugins if necessary
# COPY ./wordpress/wp-config.php /var/www/html/wp-config.php
# COPY ./your-theme-path /var/www/html/wp-content/themes/your-theme
# COPY ./your-plugin-path /var/www/html/wp-content/plugins/your-plugin
RUN chown -R www-data:www-data /var/www/html
# Expose the necessary port
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]

