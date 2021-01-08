sudo sysctl -w vm.nr_hugepages=128
mkdir /etc/xmrig
cp config.json /etc/xmrig
cp xmrig.service /usr/lib/systemd/system
cp xmrig /usr/local/bin/
systemctl enable xmrig
systemctl start xmrig
tailf /var/log/xmrig.log
