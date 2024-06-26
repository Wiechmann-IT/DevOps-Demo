# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Optional: Install any additional requirements or extensions
# This section is commented out, but you can uncomment and modify it if there are additional packages you need.
# RUN apt-get update && apt-get install -y example-package

# Copy any custom themes or plugins into the image
# You should uncomment these lines and modify the paths if you have specific themes or plugins to include in your image.
# COPY ./your-theme-path /var/www/html/wp-content/themes/your-theme
# COPY ./your-plugin-path /var/www/html/wp-content/plugins/your-plugin

# Expose port 80 to the host so that WordPress can be accessed from outside the container
EXPOSE 80

# When running a container, this command will start Apache and the necessary services
CMD ["apache2-foreground"]
