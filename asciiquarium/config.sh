apt-get update
apt-get install build-essential libcurses-perl -y
cd /tmp
wget -nv http://search.cpan.org/CPAN/authors/id/K/KB/KBAUCOM/Term-Animation-2.4.tar.gz
tar -zxvf Term-Animation-2.4.tar.gz -C /tmp/
cd Term-Animation-2.4/
perl Makefile.PL && make && make test
make install
cd /tmp
wget -nv http://www.robobunny.com/projects/asciiquarium/asciiquarium.tar.gz
tar -zxvf asciiquarium.tar.gz -C /tmp/
cd asciiquarium_1.1/
cp asciiquarium /usr/local/bin
chmod 0755 /usr/local/bin/asciiquarium
