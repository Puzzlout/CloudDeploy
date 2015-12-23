#### FIRST ln -s ~/[numeric-www-folder] ~/httpdocs

# watchr
gem install watchr

# phpunit
mkdir ~/bin/
echo "bin" >> .gitignore
wget http://pear.phpunit.de/get/phpunit.phar -P ~/bin/
chmod +x ~/bin/phpunit.phar
ln -s ~/bin/phpunit.phar ~/bin/phpunit

# phing
wget http://pear.phing.info/get/phing.phar -P ~/bin/
chmod +x ~/bin/phing.phar
ln -s ~/bin/phing.phar ~/bin/phing

# phpcs
wget https://github.com/Sb15/Phar/raw/master/Phpcs/phpcs.phar -P ~/bin/
chmod +x ~/bin/phpcs.phar
ln -s ~/bin/phpcs.phar ~/bin/phpcs

# phploc
wget http://pear.phpunit.de/get/phploc.phar -P ~/bin/
chmod +x ~/bin/phploc.phar
ln -s ~/bin/phploc.phar ~/bin/phploc

# phpmd
wget http://pear.phpmd.org/get/phpmd.phar -P ~/bin/
chmod +x ~/bin/phpmd.phar
ln -s ~/bin/phpmd.phar ~/bin/phpmd

# phpcpd
wget http://pear.phpunit.de/get/phpcpd.phar -P ~/bin/
chmod +x ~/bin/phpcpd.phar
ln -s ~/bin/phpcpd.phar ~/bin/phpcpd

# pdepend
wget http://static.pdepend.org/php/latest/pdepend.phar -P ~/bin/
chmod +x ~/bin/pdepend.phar
ln -s ~/bin/pdepend.phar ~/bin/pdepend

# php-cs-fixer
wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -P ~/bin/
chmod +x ~/bin/php-cs-fixer.phar
ln -s ~/bin/php-cs-fixer.phar ~/bin/php-cs-fixer

# phpdoc
wget http://www.phpdoc.org/phpDocumentor.phar -O ~/bin/phpdoc.phar
chmod +x ~/bin/phpdoc.phar
ln -s ~/bin/phpdoc.phar ~/bin/phpdoc