phpbrew self-update
phpbrew --debug install 7.0.1 +default+apxs2+mysql
source ~/.phpbrew/bashrc
phpbrew switch 7.0.1
phpbrew use 7.0.1
phpbrew ext install curl
php -v
