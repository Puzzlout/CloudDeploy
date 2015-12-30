# http://phpbrew.github.io/phpbrew/
# https://community.c9.io/t/phpbrew-on-php-workspaces/621
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew
phpbrew -v
phpbrew init
vim ~/.bashrc
# Paste this: [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
phpbrew lookup-prefix homebrew
phpbrew update
# Avoid 5.6.16 ==> is crashing!
phpbrew --debug install 5.6.10 as 5.6-dev +default
phpbrew switch php-5.6.10
phpbrew use php-5.6.10