#!/system/bin/sh
echo "Inicia"
IP=`sqlite3 /data/data/nebula.link.android/databases/termos "select ip from ip where _id=2"`
echo "ip $IP"
ifconfig eth0 address $IP netmask 255.255.255.0 
echo "Ip estatica OK!!!"
GATEWAY=`sqlite3 /data/data/nebula.link.android/databases/termos "select ip from ip where _id=3"`
echo "Gw $GATEWAY"
#route add default gw 192.168.1.1 eth0
route add -net 192.168.1.0 netmask 255.255.255.0 gw $GATEWAY
echo "Gateway OK!!"
