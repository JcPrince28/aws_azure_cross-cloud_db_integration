FROM phpmyadmin/phpmyadmin

# Set environment variables
ENV PMA_HOSTS="10.0.2.4,172.31.251.236"
ENV PMA_PORTS="3306,3306"
ENV PMA_VERBOSES="AzureMySQL,Amazon_RDS"

# Set the startup command
CMD ["apache2-foreground"]