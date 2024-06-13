Home Directory RC files
=======

It takes a while to get a new account up and running, and there are always loose preferences lying around.
This is for bashrc, vimrc, etc to sync between computers.

Bringing up a server
-------

Double check that the CD has been commented out in /etc/apt/sources.list
<pre>
apt-get install aptitude vim-nox git fail2ban sudo ctags
update-alternatives --config editor
gpasswd -a <username> sudo
visudo # add insults ;-)
git clone https://github.com/kstripp/dotfiles.git ~/.dotfiles
cd ~/.homerc && ./setup.sh
</pre>
