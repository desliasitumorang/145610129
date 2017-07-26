FROM alpine
MAINTAINER desli (desliasitumorang@gmail.com)

 # Install nginx
   RUN apk add --update nginx && rm -rf /var/cache/apk/*
 # Create Direktori
   RUN mkdir -p /tmp/nginx/client-body

        # Copy file
        copy nginx/nginx.conf /etc/nginx/nginx.conf
        copy nginx/default.conf /etc/nginx/conf.d/default.conf
        copy src /usr/share/nginx/html

        # Add the files
        #ADD root /

        # Expose the ports for nginx
        EXPOSE 80 443

        # Running Nginx
        CMD ["nginx", "-g", "daemon off;"]
