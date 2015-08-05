# docker-dotclear
========
This is a basic image for the most popular french CMS : Dotclear : http://fr.dotclear.org

Port
----

This image expose port 80.

Volume
----

You can save your data by mapping them to the volume /var/www/html/.

Usage
----

Just start the image
```
docker run -p 80:80 -v /my_host_dotclear_directory:/var/www/html/ --name dotclear slobberbone/docker-dotclear
```
