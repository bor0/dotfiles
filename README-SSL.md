# Local SSL websites on Mac OSX with Apache
First we start by generating the certificate files:
```
openssl req \
       -newkey rsa:2048 -nodes -keyout server.key \
       -x509 -days 365 -out server.crt
```
Afterwards, in `httpd.conf`, uncomment:
```
LoadModule ssl_module lib/httpd/modules/mod_ssl.so
```
Now, in addition to the existing:
```
Listen 8080

<VirtualHost *:8080>
ServerName localhost

DocumentRoot /usr/local/var/www/htdocs/
</VirtualHost>
```
Add:
```
Listen 8080
Listen 8081

<VirtualHost *:8081>
ServerName localhostsafe

DocumentRoot /usr/local/var/www/htdocs/ssl

SSLEngine on
SSLCertificateFile /usr/local/etc/httpd_ssl/server.crt
SSLCertificateKeyFile /usr/local/etc/httpd_ssl/server.key
</VirtualHost>
```
The reason we bind to 8081 is so that it doesn't require root access.

Now, whenever you want to enable HTTPS on the default port, you just do:
`sudo socat tcp-listen:443,reuseaddr,fork tcp:localhost:8081`

Boro Sitnikovski
