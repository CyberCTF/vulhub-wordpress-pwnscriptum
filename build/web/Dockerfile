# Vulhub's wordpress/pwnscriptum (in ../../app/) runs vulhub/wordpress:4.6 with these
# environment values in its compose file. Isoloom has no `environment:`, so this image bakes the same values in. Nothing else differs.
FROM vulhub/wordpress:4.6
ENV WORDPRESS_DB_HOST=mysql:3306 \
    WORDPRESS_DB_USER=root \
    WORDPRESS_DB_PASSWORD=root \
    WORDPRESS_DB_NAME=wordpress
