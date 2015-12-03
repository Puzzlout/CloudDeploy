#$1 => the c9 username
#$2 => the application name to load and configure
echo "Install MySQL"
mysql-ctl install
echo "Finished installing Mysql"
echo "Installing phpMyAdmin"
phpmyadmin-ctl install
echo "Finished phpMyAdmin"
echo "Starting Mysql server..."
mysql-ctl start
echo "Mysql server launched."
git clone https://github.com/$1/$2.git
#echo "Configuring MySQL and setting up the project database..."
#chmod +x mysql_configure.sh
#sh mysql_configure.sh $2