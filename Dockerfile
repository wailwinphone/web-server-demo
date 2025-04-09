# Use the official Nginx image as the base
FROM nginx:latest


COPY images/ /usr/share/nginx/html/images/


# Ensure Nginx has permissions to read the files (optional, but good practice)
RUN chmod -R 644 /usr/share/nginx/html/images/* \
    && chown -R nginx:nginx /usr/share/nginx/html/images/