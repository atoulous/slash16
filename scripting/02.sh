echo "0 4 * * 1 sudo apt-get update -y && sudo apt-get upgrade -y >> /var/log/update_script.log" >> /etc/crontab ; /etc/init.d/cron restart
