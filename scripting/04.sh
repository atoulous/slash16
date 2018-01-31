script='sudo cat /etc/crontab > /home/vagrant/crontab.sum
file=$( md5sum "/home/crontab.sum" | awk "{print $1}")
file2=$( md5sum "/etc/crontab" | awk "{print $1}")
if [ "x$file1_md5" = "x$file2_md5" ]
then
	echo "No modif"
	exit 0
else
	echo "Modif"
	sudo cat /etc/crontab > /home/crontab.sum
	exit 1
fi'

echo " 0 0 * * * $script" >> /etc/crontab; /etc/init.d/cron restart
