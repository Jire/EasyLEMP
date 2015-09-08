echo "\033[94mWelcome to \033[1mEasyLEMP\033[0m\033[94m!"
echo "\033[94mThis simple install script was created by Thomas Nappo."
echo "\033[94mYou can find me on GitHub: https://github.com/Jire\033[0m"
echo ""
sleep 4.25
echo "\033[94mEasyLEMP:\033[0m Updating apt-get...\033[0m"
sleep 1.5
sudo apt-get update
echo ""
echo "\033[94mEasyLEMP:\033[0m Installing nginx...\033[0m"
sleep 1.5
sudo apt-get -y install nginx
echo ""
echo "\033[94mEasyLEMP:\033[0m Installing mysql-server...\033[0m"
sleep 1.5
sudo apt-get -y install mysql-server
echo ""
echo "\033[94mEasyLEMP:\033[0m Installing mysql db...\033[0m"
sleep 1.5
sudo mysql_install_db
echo ""
echo "\033[94mEasyLEMP:\033[0m Securing mysql installation...\033[0m"
sleep 1.5
sudo mysql_secure_installation
echo ""
echo "\033[94mEasyLEMP:\033[0m Installing php5-fpm...\033[0m"
sleep 1.5
sudo apt-get -y install php5-fpm
echo ""
echo "\033[94mEasyLEMP:\033[0m Installing php5-mysql...\033[0m"
sleep 1.5
sudo apt-get -y install php5-mysql
echo ""
echo "\033[94mEasyLEMP:\033[0m Configuring php5-fpm defaults...\033[0m"
sleep 1.5
sudo rm -f /etc/php5/fpm/php.ini
sudo wget https://raw.githubusercontent.com/Jire/EasyLEMP/master/defaults/php.ini -O /etc/php5/fpm/php.ini
echo "\033[94mEasyLEMP:\033[0m Restarting php5-fpm...\033[0m"
sleep 1.5
sudo service php5-fpm restart
echo "\033[94mEasyLEMP:\033[0m Configuring nginx defaults...\033[0m"
sleep 1.5
sudo rm -f /etc/nginx/sites-available/default
sudo wget https://raw.githubusercontent.com/Jire/EasyLEMP/master/defaults/default -O /etc/nginx/sites-available/default
echo "\033[94mEasyLEMP:\033[0m Adding default index and php.info page...\033[0m"
sudo rm -f /usr/share/nginx/html/index.html
sudo wget https://raw.githubusercontent.com/Jire/EasyLEMP/master/defaults/index.html -O /usr/share/nginx/html/index.html
sudo wget https://raw.githubusercontent.com/Jire/EasyLEMP/master/defaults/info.php -O /usr/share/nginx/html/info.php
echo "\033[94mEasyLEMP:\033[0m Restarting nginx...\033[0m"
sleep 1.5
sudo service nginx restart
echo "\033[94mEasyLEMP:\033[0m Installing phpMyAdmin...\033[0m"
sudo apt-get -y install phpmyadmin
sudo ln -s /usr/share/phpmyadmin /usr/share/nginx/html
sudo php5enmod mcrypt
echo "\033[94mEasyLEMP:\033[0m Restarting LEMP stack...\033[0m"
sudo service php5-fpm restart
sudo service nginx restart
sudo service mysql restart
echo ""
echo "\033[94mEasyLEMP:\033[0m We're all done!"
echo "\033[94mEasyLEMP:\033[0m Your web files can be put in /usr/share/nginx/html"
echo "\033[94mEasyLEMP:\033[0m We've set a default index page for you and an info.php page."
echo "\033[94mEasyLEMP:\033[0m I hope you enjoyed using \033[94mEasyLEMP\033[0m!"