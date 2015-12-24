FROM nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Remove any other default Nginx configuration file
RUN rm -v /etc/nginx/conf.d/*.conf

# Copy server configuration files from current directory
ADD conf.d/* /etc/nginx/conf.d/

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Add index.html to /data/www
ADD server1/index.html /data/www/

# Create more server directories
RUN mkdir -p /data/server2
RUN mkdir -p /data/server3
RUN mkdir -p /data/server4

# Add other index.html to /data/server#
ADD server2/index.html /data/server2/
ADD server3/index.html /data/server3/
ADD server4/index.html /data/server4/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

CMD service nginx start
