$PYTHON_CONFIG_DIR=/usr/lib/python3.9/config-3.9-x86_64-linux-gnu

sudo apt-get update
sudo apt-get upgrade -y

#
#
# i3 install & config
#
#
sudo apt-get install i3
sudo apt-get install i3blocks
sudo apt-get install compton
sudo apt-get install feh

if [ -f ~/.config/i3/conf ]; then
    rm ~/.config/i3/config
fi
cp ./i3/config ~/.config/i3/config

if [ -f ~/.config/i3/i3blocks.conf ]; then
    rm ~/.config/i3/i3blocks.conf
fi
cp ./i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp ./i3/b1.jpg ~/.config/i3/b1.jpg

# clone i3gaps from github and run instalation script
git clone "https://github.com/maestrogerardo/i3-gaps-deb.git"
cd i3-gaps-deb
./i3-gaps-deb
cd ../


#
#
# switch to terminal with transparency
#
#
sudo apt-get remove gnome-terminal -y
sudo apt-get install ./gnome-terminal-data_3.28.1-1ubuntu1mint2_all.deb
sudo apt-get install ./gnome-terminal_3.28.1-1ubuntu1mint2_amd64.deb
sudo apt-get install bash-completion


#
#
# install vim 8.2
#
#
sudo apt-get install git
sudo apt-get install cmake
sudo apt-get install make
sudo apt-get install clang
# build from source
git clone "https://github.com/vim/vim.git"
cd vim/src
./configure \
    --with-features=huge \
    --enable-largefile \
    --enable-multibyte \
    --enable-python3interp \
    --with-python3-command=python3 \
    --with-python3-config-dir=/usr/lib/python3.9/config-3.9-x86_64-linux-gnu/
make
sudo make install
cd ../../

# install plugged into vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# add vividchalk
mkdir ~/.vim/colors -p
cp vim/colors/vividchalk.vim

# youcompleteme dependencies
sudo apt-get install python3-pip
sudo apt-get install python3-dev
sudo apt-get install python
sudo apt-get install python-dev
python3 -m pip install cmake

sudo apt-get install nodejs
sudo apt-get install npm
sudo npm install -g typescript


#
#
# Additional utils
#
#
sudo apt-get install wget
sudo ln -s /usr/sbin/shutdown /usr/bin/shutdown
sudo ln -s /usr/sbin/reboot /usr/bin/reboot
sudo apt-get install xclip
echo 'alias xclipin="xclip -selection clipboard"' >> ~/.bash_aliases
echo 'alias gss="git status"' >> ~/.bash_aliases
