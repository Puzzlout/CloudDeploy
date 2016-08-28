################################################################################
# First install script of API
# 
# Input $1: dev or prod
# Input $2: the deploy folder
# Input $3: use local composer.phar => 0 (false) or 1 (true)
################################################################################
cd api/
git pull
last_release=$(git describe --tags)
git checkout tags/$last_release -b v$last_release
echo "Run composer..."
if [ $3 = "1" ]
then
    sh/composer.phar install
    sh/composer.phar update
else
    composer install
    composer update
fi
echo "IMPORTANT: Require a mysql root user with no password"
php bin/console doctrine:database:create --if-not-exists
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update --force
echo "IMPORTANT: Admin user created with user admin, pass admin"
php bin/console fos:user:create admin admin@admin.com admin --super-admin
php bin/console assets:install --env=$1 --symlink
php bin/console cache:warmup --env=$1
cd ..
