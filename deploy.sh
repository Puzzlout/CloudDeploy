MY_USERNAME = "webdevjl"
echo "Install MySQL"
mysql-ctl install
echo "Finished installing Mysql"
echo "Installing phpMyAdmin"
phpmyadmin-ctl install
echo "Finished phpMyAdmin"
echo "Starting Mysql server..."
mysql-ctl start
echo "Mysql server launched."
echo "Configuring MySQL and setting up the project database..."
chmod +x mysql_configure.sh
sh mysql_configure.sh