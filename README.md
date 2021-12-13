# i3 for debian11

This is my space where I store all of my configs
but feel free to use it.

Most of the things should be included in `setup.sh` script
which should take care of basic setup.


NOT included in setup:
 * idea


# Debian Transparent Terminal
gnome-terminal dropped support for transparency feature
after 3.28v so I packaged gnome-terminal_3.28 from my old ubuntu

so far it caused me ZERO problems even though it is old version and from ubuntu
but keep it in mind if you had some

<small>included in `setup.sh` but if this is your only interest</small>
```bash
sudo apt-get remove gnome-terminal
sudo apt-get install ./gnome-terminal-data_3.28.1-1ubuntu1mint2_all.deb
sudo apt-get install ./gnome-terminal_3.28.1-1ubuntu1mint2_amd64.deb
```


