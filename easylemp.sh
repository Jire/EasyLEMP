echo -e "\033[34mWelcome to \033[1mEasyLEMP\033[0m\033[34m!\033[0m"
sleep 3
echo -e "\033[34mEasyLEMP:\033[0m Updating apt-get...\033[0m"
sudo apt-get update
echo -e "\033[34mEasyLEMP:\033[0m Installing nginx...\033[0m"
sudo apt-get install nginx
echo -e "\033[34mEasyLEMP:\033[0m Installing mysql-server...\033[0m"
sudo apt-get install mysql-server
echo -e "\033[34mEasyLEMP:\033[0m Installing mysql db...\033[0m"
sudo mysql_install_db
echo -e "\033[34mEasyLEMP:\033[0m Securing mysql installation...\033[0m"
sudo mysql_secure_installation
echo -e "\033[34mEasyLEMP:\033[0m Installing php5-fpm...\033[0m"
sudo apt-get install php5-fpm
echo -e "\033[34mEasyLEMP:\033[0m Installing php5-mysql...\033[0m"
sudo apt-get install php5-mysql
read -p "\033[34mEasyLEMP:\033[0m Press \033[1m[Enter]\033[0m to configure php.ini\033[0m"
sudo nano /etc/php5/fpm/php.ini
echo -e "\033[34mEasyLEMP:\033[0m Restarting php5-fpm...\033[0m"
sudo service php5-fpm restart
read -p "\033[34mEasyLEMP:\033[0m Press \033[1m[Enter]\033[0m to configure nginx\033[0m"
sudo nano /etc/nginx/sites-available/default
echo -e "\033[34mEasyLEMP:\033[0m Restarting nginx...\033[0m"
sudo service nginx restart
read -p "\033[34mEasyLEMP:\033[0m Done. Press \033[1m[Enter]\033[0m to finish.\033[0m"