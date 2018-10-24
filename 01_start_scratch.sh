#!/bin/bash

rm -f /etc/service/sshd/down
/etc/my_init.d/00_regen_ssh_host_keys.sh
touch /etc/service/sshd/down
  
# Setup SSH key
if [ "x$SSH_AUTHORIZED_KEYS" != "x" ]; then

  # Default 22
  if [ "x$SSH_PORT" != "x" ]; then
    sed -i "/^Port/c\Port=$SSH_PORT" /etc/ssh/sshd_config
  fi

  mkdir ~/.ssh
  echo "$SSH_AUTHORIZED_KEYS" | sed 's/\\n/\n/g' > ~/.ssh/authorized_keys
  chmod 400 ~/.ssh/authorized_keys
fi

#cd ~/Scratch/scratch-vm
#nohup npm run watch > /var/log/npmwatch.log 2>&1 &
#sleep 60

#sed -i "/^        port: process.env.PORT || 8601/c\        port: process.env.PORT || 80" ~/Scratch/scratch-gui/webpack.config.js 
## disableHostCheck: true IN webpack.config.js  
#cd ~/Scratch/scratch-gui
#nohup npm start &

# Start ssh service
exec /usr/sbin/sshd -D -e -u 0

