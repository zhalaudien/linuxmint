#!/bin/bash

# Install Apache
echo "Installing Apache, PHP, and MariaDB..."
sudo apt install apache2 php php-intl mariadb-server -y


# Secure MariaDB installation
echo "Securing MariaDB installation..."
sudo mysql_secure_installation

# Install phpMyAdmin
echo "Installing phpMyAdmin..."
sudo apt install phpmyadmin -y


# Install Composer
echo "Installing Composer..."
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo "Installation completed successfully!"