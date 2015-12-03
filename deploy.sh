MY_USERNAME = "webdevjl" #To input in a php script
echo "Install MySQL"
mysql-ctl install
echo "Finished installing Mysql"
echo "Installing phpMyAdmin"
phpmyadmin-ctl install
echo "Finished phpMyAdmin"
echo "Starting Mysql server..."
mysql-ctl start
echo "Mysql server launched."
git clone https://github.com/WebDevJL/EasyMvc.git
echo "Configuring MySQL and setting up the project database..."
chmod +x mysql_configure.sh
sh mysql_configure.sh $1