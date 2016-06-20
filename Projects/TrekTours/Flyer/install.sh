#$1 dev or prod
git pull
echo "Run composer..."
composer install
composer update
npm install -g bower
echo "Run bower..."
bower install
bower update
echo "IMPORTANT: Require a mysql root user with no password"
php bin/console doctrine:database:create --if-not-exists
php bin/console doctrine:schema:update --force
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
php bin/console assets:install --symlink
php bin/console assetic:dump --env=$1 --no-debug
