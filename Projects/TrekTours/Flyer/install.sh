################################################################################
# First install script of API
# 
# Input $1: dev or prod
# Input $2: the deploy folder
# Input $3: the target server:
# 	> local
#	> c9: a Cloud9 workspace
#	> lw: a LiquidWeb Storm VPS
################################################################################
cd public/
git pull
echo "Run composer..."
composer install
composer update
if [ $(bower -v | tail -1) == "-bash: bower: command not found" ]
    then
	echo "Bower is not installed! Installing..."
	sudo npm install -g bower
	echo "Bower is now installed!"
fi
echo "Run bower..."
bower install
bower update
echo "IMPORTANT: Require a mysql root user with no password"
php bin/console doctrine:database:create --if-not-exists
php bin/console doctrine:schema:update --force
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console lexik:translations:import AppBundle --cache-clear
php bin/console assets:install --env=$1 --symlink
php bin/console assetic:dump --env=$1 --no-debug
php bin/console cache:warmup --env=$1
