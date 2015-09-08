echo "\033[94mWelcome to \033[1mEasyLEMP\033[0m\033[94m!"
echo "\033[94mThis simple install script was created by Thomas Nappo."
echo "\033[94mYou can find me on GitHub: https://github.com/Jire\033[0m"
echo ""
sleep 4.25
echo "\033[94mEasyLEMP:\033[0m Updating apt-get...\033[0m"
sleep 1.5
sudo apt-get update
echo "\033[94mEasyLEMP:\033[0m Installing nginx...\033[0m"
sleep 1.5
sudo apt-get install nginx
echo "\033[94mEasyLEMP:\033[0m Installing mysql-server...\033[0m"
sleep 1.5
sudo apt-get install mysql-server
echo "\033[94mEasyLEMP:\033[0m Installing mysql db...\033[0m"
sleep 1.5
sudo mysql_install_db
echo "\033[94mEasyLEMP:\033[0m Securing mysql installation...\033[0m"
sleep 1.5
sudo mysql_secure_installation
echo "\033[94mEasyLEMP:\033[0m Installing php5-fpm...\033[0m"
sleep 1.5
sudo apt-get install php5-fpm
echo "\033[94mEasyLEMP:\033[0m Installing php5-mysql...\033[0m"
sleep 1.5
sudo apt-get install php5-mysql
read -p "\033[94mEasyLEMP:\033[0m Press \033[1m[Enter]\033[0m to configure php.ini\033[0m"
sleep 1.5
sudo nano /etc/php5/fpm/php.ini
echo "\033[94mEasyLEMP:\033[0m Restarting php5-fpm...\033[0m"
sleep 1.5
sudo service php5-fpm restart
read -p "\033[94mEasyLEMP:\033[0m Press \033[1m[Enter]\033[0m to configure nginx\033[0m"
sleep 1.5
sudo nano /etc/nginx/sites-available/default
echo "\033[94mEasyLEMP:\033[0m Restarting nginx...\033[0m"
sleep 1.5
sudo service nginx restart
read -p "\033[94mEasyLEMP:\033[0m Done. Press \033[1m[Enter]\033[0m to finish.\033[0m"