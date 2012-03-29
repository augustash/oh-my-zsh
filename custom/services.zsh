# Nginx 
alias nginx-up="sudo /etc/init.d/nginx start"
alias nginx-down="sudo /etc/init.d/nginx stop"
alias nginx-check="sudo /etc/init.d/nginx configtest"
alias nginx!="sudo /etc/init.d/nginx reload"

# PHP-FPM
alias php-up="sudo /etc/init.d/php-fpm start"
alias php-down="sudo /etc/init.d/php-fpm stop"
alias php-check="sudo /etc/init.d/php-fpm configtest"
alias php!="sudo /etc/init.d/php-fpm reload"

# Varnish
alias varnish:start='sudo /usr/local/sbin/varnishd -a :6081 -f /usr/local/etc/varnish/default.vcl -T 127.0.0.1:6082 -s file,/usr/local/var/varnish/varnish_storage.bin,1G'
alias varnish:stop='sudo pkill varnishd'

# Jenkins
alias jenkins:start='java -jar /usr/local/Cellar/jenkins/1.414/lib/jenkins.war'

# PostgreSQL
alias pg:start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg:stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# MySQL
alias mysql.start='launchctl load -w /usr/local/Cellar/mariadb/5.2.8/com.mysql.mysqld.plist'

# Mongo
alias mongo.start='mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'

# Selenium
alias selenium.start='java -jar /usr/local/Cellar/selenium-server-standalone/2.16.1/selenium-server-standalone-2.16.1.jar -p 4444 -trustAllSSLCertificate'

# POW
alias pow:install='curl get.pow.cx | sh'
alias pow:uninstall='curl get.pow.cx/uninstall.sh | sh'
