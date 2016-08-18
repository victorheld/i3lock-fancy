i3lock-fancy (with battery percentage)
============

This is an i3lock bash script that takes a screenshot of the desktop, blurs the background and adds a lock icon and text with the battery percentage

![screen shot of lockscreen](https://raw.githubusercontent.com/victorheld/i3lock-fancy/master/screenshot.png)

Dependencies
------------
* <s>[i3lock-color-git](https://github.com/eBrnd/i3lock-color)</s>
* [i3lock-color-git](https://github.com/Arcaena/i3lock-color) - this is a fork of i3lock-color that is kept up to date with i3lock
* imagemagick
* scrot
* bash
* awk
* utils-linux

Installation
------------
Install by cloning the repo and running ./install.sh or manually copying lock, lock.png and lockdark.png to "/usr/local/bin"

Removal
------------
Remove by running ./remove.sh or by deleting lock, lock.png and lockdark.png from "/usr/local/bin" 

Usage
-----

    lock [options]

    Options:
        -h, --help   This help menu.
        -g, --greyscale  Set background to greyscale instead of color.
        -p, --pixelate   Pixelate the background instead of blur, runs faster.
        -f <fontname>, --font <fontname>  Set a custom font. Type 'convert -list font' in a terminal to get a list.

example: ```lock -gpf Comic-Sans-MS```

Extras
------

Use this with xautolock to automatically lock the screen after a set time.

Systemd Unit file (edit for your own use):

    [Unit]
    Description=Lock the screen automatically after a timeout
    
    [Service]
    Type=simple
    User=meskarune
    Environment=DISPLAY=:0
    ExecStart=/usr/bin/xautolock -time 5 -locker /usr/local/bin/lock -detectsleep
    
    [Install]
    WantedBy=graphical.target
