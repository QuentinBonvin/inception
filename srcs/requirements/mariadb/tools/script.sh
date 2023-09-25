# service mysql start;

# sleep 5

# mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"

# mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"

# mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"

# mysql -e "FLUSH PRIVILEGES;"

# mysqladmin -u root -p "${SQL_ROOT_PASSWORD}" shutdown

# exec mysqld_safe


service mysql start;
sleep 5

mysql -u root -p"${SQL_ROOT_PWD}" -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DB}\`;"
mysql -u root -p"${SQL_ROOT_PWD}" -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PWD}';"
mysql -u root -p"${SQL_ROOT_PWD}" -e "GRANT ALL PRIVILEGES ON \`${SQL_DB}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PWD}';"
mysql -u root -p"${SQL_ROOT_PWD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PWD}';"
mysql -u root -p"${SQL_ROOT_PWD}" -e "FLUSH PRIVILEGES;"
mysqladmin -u root -p"${SQL_ROOT_PWD}" shutdown

exec mysqld_safe