sudo vim /etc/fstab #find /home partition and put "usrquota" right after "defaults" using comma as separator
sudo apt install quota
find /lib/modules/`uname -r` -type f -name '*quota_v*.ko*'
sudo quotacheck -vum /home
sudo shutdown -r