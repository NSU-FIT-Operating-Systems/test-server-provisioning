# Initial step 

You need to create and fill invetory.yml, expesially need to set group_name variable. 
Then you need to create 'group_name'-vars.yml with the list of usernames for group members.  
These usernames should be the same as users have on g.nsu.ru domain, becaues they used also for sending emails with ssh keys.

# Create base ssh key files on local host

ansible-playbook ssh-keygen-playbook.yml --extra-vars="group_name=20205"

where 'group_name' needs to be actual group name and should be the same as on initial step

# Before creating users

User creation playbook not only creates users but also sets up user disk quota, thus it is required to run setup_usrquora.sh commands on remote server before running playbook for creating users

# Create users and set up authorized keys on remote server

ansible-playbook setup-users-playbook.yml -K

"-K" stands for promting sudo password in terminal
