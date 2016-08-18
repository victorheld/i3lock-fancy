#!/bin/bash
if [[ $UID != 0 ]];
then
    sudo cp ./{lock,lock.png,lockdark.png} /usr/local/bin/
    sudo cp ./lock.service /usr/lib/systemd/system/
else
    cp ./{lock,lock.png,lockdark.png} /usr/local/bin/
    cp ./lock.service /usr/lib/systemd/system/
fi
