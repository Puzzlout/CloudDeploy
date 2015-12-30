#$1 => the c9 username
#$2 => the application name to load and configure
echo "Updating the System..."
sudo apt-get update
echo "Updating mcrypt..."
sudo apt-get install libmcrypt-dev
echo "Upgrading PHP version... to 5.6!"
chmod +x CloudDeploymentManager/php-upgrade.sh
echo "Installing MySQL"
mysql-ctl install
echo "Finished installing Mysql"
echo "Installing phpMyAdmin"
phpmyadmin-ctl install
echo "Finished phpMyAdmin"
echo "Starting Mysql server..."
mysql-ctl start
echo "Mysql server launched."
#git clone https://github.com/$1/$2.git
#echo "Configuring MySQL and setting up the project database..."
#chmod +x CloudDeploymentManager/mysql_configure.sh
#sh CloudDeploymentManager/mysql_configure.sh $1 $2