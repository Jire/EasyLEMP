read -p -e "\e[34mWelcome to \e[1mEasyLEMP\e[0m\e[34m! Press \e[1m[Enter]\e[0me[34m when you're ready to begin.\e[0m"
echo -e "\e[34mEasyLEMP:\e[0m Updating apt-get...\e[0m"
sudo apt-get update
echo -e "\e[34mEasyLEMP:\e[0m Installing nginx...\e[0m"
sudo apt-get install nginx
echo -e "\e[34mEasyLEMP:\e[0m Installing mysql-server...\e[0m"
sudo apt-get install mysql-server
echo -e "\e[34mEasyLEMP:\e[0m Installing mysql db...\e[0m"
sudo mysql_install_db
echo -e "\e[34mEasyLEMP:\e[0m Securing mysql installation...\e[0m"
sudo mysql_secure_installation
echo -e "\e[34mEasyLEMP:\e[0m Installing php5-fpm...\e[0m"
sudo apt-get install php5-fpm
echo -e "\e[34mEasyLEMP:\e[0m Installing php5-mysql...\e[0m"
sudo apt-get install php5-mysql
read -p "\e[34mEasyLEMP:\e[0m Press \e[1m[Enter]\e[0m to configure php.ini\e[0m"
sudo nano /etc/php5/fpm/php.ini
echo -e "\e[34mEasyLEMP:\e[0m Restarting php5-fpm...\e[0m"
sudo service php5-fpm restart
read -p "\e[34mEasyLEMP:\e[0m Press \e[1m[Enter]\e[0m to configure nginx\e[0m"
sudo nano /etc/nginx/sites-available/default
echo -e "\e[34mEasyLEMP:\e[0m Restarting nginx...\e[0m"
sudo service nginx restart
read -p "\e[34mEasyLEMP:\e[0m Done. Press \e[1m[Enter]\e[0m to finish.\e[0m"