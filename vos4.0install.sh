mkdir ~/.ssh
chmod 700 ~/.ssh
vi ~/.ssh/authorized_keys

ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAmtqD0IdgMQbd9lBlQsrDyax8q7xPvvS+Cver6lp6cMfhi4vBQX8olf+aE7eUqjQIYE1DXQ4QNjqh42qkdY2AZt3PaTB44CG8BprSsqbcARHlRmIMqx5o8d7I9dqHPb4gPjPScH9PY1kKJ6MQiJnoUawIXIyQD5vRabaJ5Xd9Lky/oTo3pyofLiaaINZpjJWX6LheoxWojziloJ0VGlKFKppS2N8oMnxyxpwE7y1tGW1taBsk2UcPFQ94qpkieiix1XfP6BbJiV/5p60ukIUwKPVpnNxYf97LOhk4W6JmngZLLcI3Ueuvzvxi2JruKplQPUgRcmGLLZQ3JS8qkF/DTQ== root@localhost
chmod 644 ~/.ssh/authorized_keys




vos4.0
查看系统标识码
cat /home/kunshi/vos3000/server/etc/server.conf
#修改mysql密码
update e_user set password='c0c73baafbde78e1c22f1a44e5da636037cc5fcf65859f432b68e910624358d75f9161c54bc3a13058c13ef7cea17caa2bdac369ba10cb9e8d08849297090905' where id=1;
update e_user set password='1e99769964ff33ab9d94dd8530c15be9903211eb7f848899dc6d2d842796ef2768f71148ef297dfcf2c77943a154ad7b7ddb7f4c7d339350ff86e4d918214de3' where id=1;
#修改roos进去mysql的密码
set password for root@localhost = password('xiaofan@1');
依赖环境
error while loading shared libraries: libstdc++.so.6: cannot open shared object file: No such file or directory
错误
yum whatprovides libstdc++.so.6
yum install -y libstdc++-4.1.2-55.el5.i386


运行setup,打开iptables(注意：必须将ssh端口加入白名单，否则会导致连不上服务器) 还有关闭selinux
http://21k.oss-cn-qingdao-internal.aliyuncs.com/vospag/vos3000-2.1.4.0.tar.gz
setenforce 0
sh create_user_kunshi.sh
sh create_user_kunshiweb.sh
rpm -ivh perl-DBI-1.40-5.i386.rpm
rpm -ivh MySQL-server-community-5.0.96-1.rhel5.x86_64.rpm
rpm -ivh MySQL-client-community-5.0.96-1.rhel5.x86_64.rpm
tee /etc/my.cnf <<-'EOF'
[client]
port=3306
default-character-set=utf8
[mysqld]
default-character-set=utf8
max_connections=160
interactive_timeout=310000
wait_timeout=31000
query_cache_size=48M
table_cache=320
tmp_table_size=52M
thread_cache_size=8
sort_buffer_size=256K
innodb_thread_concurrency=8
myisam-recover=FORCE
max_allowed_packet=32M
innodb_file_per_table=1
EOF

service mysql restart
rpm -ivh jdk-6u45-linux-amd64.rpm
tar zxvf apache-tomcat-7.0.23.tar.gz
mv apache-tomcat-7.0.23 /home/kunshiweb/base/apache-tomcat
chmod 777 jrockit-jdk1.6.0_45-R28.2.7-4.1.0-linux-x64.bin
./jrockit-jdk1.6.0_45-R28.2.7-4.1.0-linux-x64.bin
看见next就回车


cp -r /root/jrockit-jdk1.6.0_45-R28.2.7-4.1.0 /home/kunshi/base/jdk_default
cp -r /root/jrockit-jdk1.6.0_45-R28.2.7-4.1.0 /home/kunshiweb/base/jdk_default
rpm -ivh vos3000-2.1.4-0.i586.rpm
eb3c5bc7-5f7e-4494-8027-0280ffffffff


rpm -ivh emp-2.1.4-0.noarch.rpm
rpm -ivh callservice-2.1.4-0.i586.rpm
rpm -ivh mgc-2.1.4-0.i586.rpm


rpm -ivh vos3000-web*.rpm


rpm -ivh mbx3000-2.1.4-0.i586.rpm
rpm -ivh ivr_dial-2.1.4-0.i586.rpm
rpm -ivh callcenter-2.1.4-0.i586.rpm                ------可以不安装，没用


安装话机服务：
cd phoneservice/
cp -r phoneservice /home/kunshi/
chmod 777 /home/kunshi/phoneservice/bin/phoneservice
cp -r phoneserviced /etc/init.d/
chmod 777 /etc/rc.d/init.d/phoneserviced
chkconfig phoneserviced on
service phoneserviced restart


cd ..
chmod 777 vos30002140.bin
./vos30002140.bin
ifconfig

wget http://21k.oss-cn-qingdao.aliyuncs.com/vospag/vossafe.tar.gz
tar -zxvf vossafe.tar.gz
rm -rf /home/kunshi/vos3000/server/lib/libcap.so
rm -rf /etc/init.d/vos3000d
rm -rf /etc/init.d/vos3000webct
cp -a libcap.so /home/kunshi/vos3000/server/lib/libcap.so
cp -a vos3000d /etc/init.d/vos3000d
cp -a vos3000webct /etc/init.d/vos3000webct
chmod 777 /home/kunshi/vos3000/server/lib/libcap.so
chown kunshi:kunshi /home/kunshi/vos3000/server/lib/libcap.so
chmod 770 /etc/init.d/vos3000webct
chown kunshi:kunshi /etc/init.d//vos3000webct
chmod 770 /etc/init.d/vos3000d
chown kunshi:kunshi /etc/init.d/vos3000d

mkdir /home/kunshi/license
chkconfig httpd on
chkconfig mysql on
chkconfig iptables on


tee /etc/sysconfig/iptables <<-'EOF'
#iptables
# Generated by iptables-save v1.3.5 on Fri Jul 22 20:35:06 2016
*filter
:INPUT DROP [5:200]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [4:328]
-A INPUT -i lo -j ACCEPT
-A INPUT -p tcp -m tcp --dport 88 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 1719 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 1720 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 3719 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 3720 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 10000:49999 -j ACCEPT
-A INPUT -p udp -m udp --dport 5060 -j ACCEPT
-A INPUT -p udp -m udp --dport 5070 -j ACCEPT
-A INPUT -p udp -m udp --dport 10000:49999 -j ACCEPT
#-A INPUT -p icmp --icmp-type any -j DROP
-A INPUT -p icmp -m icmp --icmp-type 0 -j ACCEPT
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
COMMIT
# Completed on Fri Jul 11 10:18:06 2017
# 小樊整理防火墙联系QQ85959493
EOF




chown mysql:mysql 
apache        ALL=(ALL)       NOPASSWD: ALL
chmod 440 /etc/sudoers


#修改4.0web端口号路径
vi /home/kunshiweb/base/apache-tomcat/conf/server.xml
crontab -e
vi /var/spool/cron/root
1 */6 * * * /opt/MbxWatch.sh
1 */1 * * * /opt/freemem.sh
01 01 * * * /etc/init.d/iptables restart




#!/bin/bash
wget http://21k.oss-cn-qingdao.aliyuncs.com/vospag/vossafe.tar.gz
tar -zxvf vossafe.tar.gz
sync
cd 5.11yum/
mkdir /etc/yum.repos.d/yumbak
mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/yumbak/
mv *.repo /etc/yum.repos.d/
yes|mv RPM-* /etc/pki/rpm-gpg/
yum clean all
yum makecache
cd ..
mv html/ /opt/
cd vossafe/
yes|mv httpd.conf /etc/httpd/conf/httpd.conf
yes|mv sudoers /etc/sudoers
yes|mv iptables /etc/sysconfig/iptables
yes|mv libcap.so /home/kunshi/vos3000/server/lib/lib/libcap.so
yes|mv vos3000d /etc/init.d/vos3000d
yes|mv vos3000webct /etc/init.d/vos3000webct
server httpd restart
server iptables restart
chkconfig iptables on
chkconfig httpd on
chkconfig mysql on
echo -e "1 */6 * * * /opt/MbxWatch.sh\n1 */1 * * * /opt/freemem.sh\n01 01 * * * /etc/init.d/iptables restart" >> /var/spool/cron/root



echo >/var/log/wtmp
echo > /var/log/btmp
echo > /var/log/lastlog
echo > /var/log/secure
echo > ~/.bash_history
echo > ~/.mysql_history
history -c 



-java -jar vos30002124reg.jar ip mac rpmtime vostime jdktime ivr line language userinfo timestamp
java -jar vos30002140.jar 101.37.12.30,10.241.104.203 00-16-3E-12-EA-30 1408326133 1499654430 1499654373 10000 20000 en_us 766F733230303932313430 1600000000
pause

防止vos超频功能





