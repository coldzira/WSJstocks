mysql-ctl cli
GRANT ALL PRIVILEGES ON *.* TO atahabdi@localhost;

mysqldump -u<atahabdi> --protocol=tcp -S /home/ubuntu/lib/mysql/socket/mysql.sock  --stocks.sql > local.sql