# Local SSL websites on Mac OSX

These instructions will guide you through the process of setting up local, trusted websites on your own computer.

These instructions are intended to be used on Mac OSX Yosemite.

**NOTE:** You may substitute the `edit` command for `nano`, `vim`, or whatever the editor of your choice is. Personally, I forward `edit` to [Sublime Text](http://www.sublimetext.com):

```sh
alias edit="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
```

---

## Configuring Apache

Within **Terminal**, start **Apache**.
```sh
sudo apachectl start
```

In a **web browser**, visit [http://localhost](http://localhost). You should see a message stating that **It works!**.

### Configuring Apache: Setting up a Virtual Host

Within **Terminal**, edit the Apache Configuration.
```sh
edit /etc/apache2/httpd.conf
```

Within your editor, replace line 212 to supress messages about the server’s fully qualified domain name.
```conf
ServerName localhost
```

Next, uncomment line 160 and line 499 to enable Virtual Hosts.
```conf
LoadModule vhost_alias_module libexec/apache2/mod_vhost_alias.so
```

```conf
Include /private/etc/apache2/extra/httpd-vhosts.conf
```

Optionally, uncomment line 169 to enable PHP.
```conf
LoadModule php5_module libexec/apache2/libphp5.so
```

Within **Terminal**, edit the Virtual Hosts.
```sh
edit /etc/apache2/extra/httpd-vhosts.conf
```

Within your editor, replace the entire contents of this file with the following, replacing *indieweb* with your user name.
```conf
<VirtualHost *:80>
    ServerName localhost
    DocumentRoot "/Users/indieweb/Sites/localhost"

    <Directory "/Users/indieweb/Sites/localhost">
        Options Indexes FollowSymLinks
        AllowOverride All
        Order allow,deny
        Allow from all
        Require all granted
    </Directory>
</VirtualHost>
```

Within **Terminal**, restart Apache.
```sh
sudo apachectl restart
```

### Configuring Apache: Creating a Site

Within **Terminal**, Create a **Sites** directory, which will be the parent directory of many individual **Site** subdirectories.
```sh
mkdir ~/Sites
```

Next, create a **localhost** subdirectory within **Sites**, which will be our first site.
```sh
mkdir ~/Sites/localhost
```

Finally, create an HTML document within **localhost**.
```sh
echo "<h1>localhost works</h1>" > ~/Sites/localhost/index.html
```

Now, in a **web browser**, visit [http://localhost](http://localhost). You should see a message stating that **localhost works**.

---

## Configuring SSL

Within **Terminal**, create a SSL directory.
```sh
sudo mkdir /etc/apache2/ssl
```

Next, generate two Host keys, decrypting the later.
```sh
sudo openssl genrsa -out /etc/apache2/server.key 2048
sudo openssl genrsa -out /etc/apache2/ssl/localhost.key 2048
sudo openssl rsa -in /etc/apache2/ssl/localhost.key -out /etc/apache2/ssl/localhost.key.rsa
```



Next, create and edit an OpenSSL Configuration.
```sh
sudo touch /etc/apache2/ssl/localhost.conf
edit /etc/apache2/ssl/localhost.conf
```

Within your editor, add the following configuration. 
```conf
[req]
default_bits = 1024
distinguished_name = req_distinguished_name
req_extensions = v3_req

[req_distinguished_name]

[v3_req]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
DNS.2 = *.localhost
```

Within **Terminal**, generate Certificate Requests using the OpenSSL Configuration, optionally replacing the defaults as you see fit.
```sh
sudo openssl req -new -key /etc/apache2/server.key -subj "/C=/ST=/L=/O=/CN=/emailAddress=/" -out /etc/apache2/server.csr
sudo openssl req -new -key /etc/apache2/ssl/localhost.key.rsa -subj "/C=US/ST=California/L=Orange/O=IndieWebCamp/CN=localhost/" -out /etc/apache2/ssl/localhost.csr -config /etc/apache2/ssl/localhost.conf
```

Next, use the Certificate Requests to sign the SSL Certificates with extensions.
```sh
sudo openssl x509 -req -days 365 -in /etc/apache2/server.csr -signkey /etc/apache2/server.key -out /etc/apache2/server.crt
sudo openssl x509 -req -extensions v3_req -days 365 -in /etc/apache2/ssl/localhost.csr -signkey /etc/apache2/ssl/localhost.key.rsa -out /etc/apache2/ssl/localhost.crt -extfile /etc/apache2/ssl/localhost.conf
```

Finally, add the later SSL Certificate to Keychain Access.
```sh
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain /etc/apache2/ssl/localhost.crt
```

### Configuring SSL: Setting up a Trusted Virtual Host

Within **Terminal**, edit the Apache Configuration.
```sh
edit /etc/apache2/httpd.conf
```

Within your editor, uncomment lines 89 and 143 to enable modules required by HTTPS.
```conf
LoadModule socache_shmcb_module libexec/apache2/mod_socache_shmcb.so
```

```conf
LoadModule ssl_module libexec/apache2/mod_ssl.so
```

Next, uncomment line 516 to enable Trusted Virtual Hosts.
```conf
Include /private/etc/apache2/extra/httpd-ssl.conf
```

Within **Terminal**, edit the Virtual Hosts file.
```sh
edit /etc/apache2/extra/httpd-vhosts.conf
```

Within your editor, add a **443** VirtualHost Name and **localhost** <VirtualHost> Directive at the end of the file, replacing *indieweb* with your user name.
```conf
<VirtualHost *:443>
    ServerName localhost
    DocumentRoot "/Users/indieweb/Sites/localhost"

    SSLEngine on
    SSLCipherSuite ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP:+eNULL
    SSLCertificateFile /etc/apache2/ssl/localhost.crt
    SSLCertificateKeyFile /etc/apache2/ssl/localhost.key

    <Directory "/Users/indieweb/Sites/localhost">
        Options Indexes FollowSymLinks
        AllowOverride All
        Order allow,deny
        Allow from all
        Require all granted
    </Directory>
</VirtualHost>
```

Within **Terminal**, restart Apache.
```sh
sudo apachectl restart
```

Now, in a **web browser**, visit [https://localhost](https://localhost). The domain should appear trusted, and you should see a message stating that **localhost works!**.
