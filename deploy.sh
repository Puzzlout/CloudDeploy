echo "Updating the System..."
sudo apt-get update
echo "Updating mcrypt..."
sudo apt-get install libmcrypt-dev
echo "Instal cUrl"
sudo apt-get install libcurl4-gnutls-dev
echo "Install apache2 dev tools for apxs2"
sudo apt-get install apache2-dev
#echo "Making php-upgrade script executable..."
chmod +x ~/workspace/deploy/php-upgrade.sh
echo "~/workspace/deploy/php-upgrade-7.0.1.sh is executable!"
echo "Installing MySQL"
mysql-ctl install
echo "Finished installing Mysql"
echo "Installing phpMyAdmin"
phpmyadmin-ctl install
echo "Finished phpMyAdmin"
echo "Starting Mysql server..."
mysql-ctl start
echo "Mysql server launched."
echo "PHP My Admin => https://{{workspace name}}-{{c9 username}}.c9users.io/phpmyadmin with root/{blank} credentials"