#!/bin/bash
if [[ $UID != 0 ]]; 
then
    sudo rm /usr/local/bin/{lock,lock.png,lockdark.png} 
    sudo rm /usr/lib/systemd/system/lock.service
else
    rm /usr/local/bin/{lock,lock.png,lockdark.png}
    rm /usr/lib/systemd/system/lock.service
fi
