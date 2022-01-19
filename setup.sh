#!/bin/bash
PASSWORD=$1
shift
cd ansible
ansible-playbook playbook.yml -e ansible_become_pass=$PASSWORD

LOGPATH=$(awk '/LOG_PATH/{print $2}' roles/cron/vars/main.yml)
LOGFILE=$(awk '/LOG_FILE/{print $2}' roles/cron/vars/main.yml)


echo -e "\n\n=============================================="
echo -e "\nDisk Usage logger is setuped"
echo -e "You can find disk usage logs at ${LOGPATH}/${LOGFILE}\n"
echo -e "=============================================="


