# Input $1: dev or prod
if [ ! -d "$2" ]; then
  echo "Directory "$2" doesn't exits!"
  exit
fi
cd $2/api
php bin/console cache:clear --env=$1
php bin/console assets:install --env=$1 --symlink
php bin/console assetic:dump --env=$1 --no-debug
php bin/console cache:warmup --env=$1