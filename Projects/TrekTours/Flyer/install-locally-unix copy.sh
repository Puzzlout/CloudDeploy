#$1 dev or prod
cd /www/sites/public
git pull
echo "Run composer..."
composer install
composer update
sudo npm install -g bower
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
