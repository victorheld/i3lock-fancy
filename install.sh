#!/bin/bash
if [[ $UID != 0 ]]; 
then
    sudo cp ./{lock,lock.png,lockdark.png} /usr/local/bin/
else
    cp ./{lock,lock.png,lockdark.png} /usr/local/bin/
fi
