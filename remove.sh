#!/bin/bash
if [[ $UID != 0 ]]; 
then
    sudo rm /usr/local/bin/{lock,lock.png,lockdark.png} 
else
    rm /usr/local/bin/{lock,lock.png,lockdark.png}
fi
