read -p -e "\e[34mWelcome to \e[1mBoldEasyLEMP\e[0m\e[34m! Press \e[1m[Enter]\e[0me[34m when you're ready to begin."
echo -e "\e[34mEasyLEMP:\e[0m Updating apt-get..."
sudo apt-get update
echo -e"\e[34mEasyLEMP:\e[0m Installing nginx...\n"
sudo apt-get install nginx
echo -e"\e[34mEasyLEMP:\e[0m Installing mysql-server..."
sudo apt-get install mysql-server
echo -e"\e[34mEasyLEMP:\e[0m Installing mysql db..."
sudo mysql_install_db
echo -e"\e[34mEasyLEMP:\e[0m Securing mysql installation..."
sudo mysql_secure_installation
echo -e"\e[34mEasyLEMP:\e[0m Installing php5-fpm..."
sudo apt-get install php5-fpm
echo -e"\e[34mEasyLEMP:\e[0m Installing php5-mysql..."
sudo apt-get install php5-mysql
read -p "\e[34mEasyLEMP:\e[0m Press [Enter] to configure php.ini"
sudo nano /etc/php5/fpm/php.ini
echo -e"\e[34mEasyLEMP:\e[0m Restarting php5-fpm..."
sudo service php5-fpm restart
read -p "\e[34mEasyLEMP:\e[0m Press [Enter] to configure nginx"
sudo nano /etc/nginx/sites-available/default
echo -e"\e[34mEasyLEMP:\e[0m Restarting nginx..."
sudo service nginx restart
read -p "\e[34mEasyLEMP:\e[0m Done. Press [Enter] to finish."