#!/bin/bash

DB_PASS_CONTENT=$(cat "$DB_PASS_FILE")

mysqld_safe --skip-networking &

until mysqladmin ping --host=localhost --silent; do
  echo "Waiting for MariaDB to be ready..."
  sleep 2
done

mysql -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"

mysql -e "CREATE USER IF NOT EXISTS \`$DB_USER\`@'%' IDENTIFIED BY '$DB_PASS_CONTENT';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS_CONTENT';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS_CONTENT';"


mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$DB_PASS_CONTENT shutdown

exec mysqld_safe