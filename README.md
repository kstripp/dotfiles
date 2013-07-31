Home Directory RC files
=======

It takes a while to get a new account up and running, and there are always loose preferences lying around.
This is for bashrc, vimrc, etc to sync between computers.

Bringing up a server
-------

<pre>
apt-get install vim subversion git fail2ban sudo
update-alternatives --config editor
gpasswd -a <username> sudo
visudo # add insults ;-)
git clone https://github.com/kstripp/LinuxRC.git
</pre>
