FROM nginx

# update apt
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs npm git git-core

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# pull from git repo
ADD start.sh /tmp/

RUN chmod +x /tmp/start.sh

CMD ./tmp/start.sh
