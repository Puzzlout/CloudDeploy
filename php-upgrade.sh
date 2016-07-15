# $1 ==> the php version
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew
phpbrew -v
phpbrew init
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
#vim ~/.bashrc
export PHPBREW_SET_PROMPT=1
export PHPBREW_RC_ENABLE=1
# Paste this: 
#   [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
# and
#   source /home/ubuntu/.phpbrew/bashrc
#
sudo phpbrew self-update
sudo chmod oga+rw /usr/lib/apache2/modules
sudo chmod -R oga+rw /etc/apache2/
sudo chmod -R oga+rw /var/lib/apache2/module/enabled_by_admin
phpbrew -d install $1 +default +mysql +apxs2
source ~/.phpbrew/bashrc
phpbrew switch $1
phpbrew use $1
phpbrew ext install curl
cp /etc/apache2/mods-available/php5.conf /etc/apache2/mods-available/php7.conf
ln -s /etc/apache2/mods-available/php7.conf /etc/apache2/mods-enabled/php7.conf
rm /etc/apache2/mods-enabled/php5.load
sudo chmod og-w /usr/lib/apache2/modules
sudo chmod -R og-w /etc/apache2/
sudo chmod -R oga-w /var/lib/apache2/module/enabled_by_admin
php -v