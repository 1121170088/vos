centos��˫����˫��˫IP�����÷���(ת)

Linux˫����˫��˫IP��
������1��
���磺
�̶����ź���ͨIP��ַ/����/���ص�����:eth0��eth1
eth0�����ļ��̶���60.29.231.160 255.255.255.192 60.29.231.1����ͨIP��
eth1�����ļ��̶���114.80.66.145 255.255.255.192 114.80.66.1������IP��
#vi /etc/iproute2/rt_tables�����ӵ��ź���ͨ����·�ɱ�
252  tel �����ţ�
251  cnc ����ͨ��
 
���ƴ��� ����ʾ��:
#vi /etc/rc.d/rc.local�����õ��ź���ͨ·�ɱ����ݣ�
ip route replace default via 114.80.66.1 dev eth1��Ĭ��·����·��
ip route flush table tel  ��ˢ��tel·�ɱ�
ip route add default via 114.80.66.1 dev eth1 src 114.80.66.145 table tel����ӻػ���ַ��
ip rule add from 114.80.66.145 table tel����114.80.66.145�����ģ���tel·�ɣ�
ip route flush table cnc
ip route add default via 60.29.231.1 dev eth0 src 60.29.231.160 table cnc
ip rule add from 60.29.231.160 table cnc �����˳�
#reboot��������


������2�� 
���磺
�̶����ź���ͨIP��ַ/����/���ص�����:eth0��eth1
eth0�����ļ��̶���60.29.231.160 255.255.255.192 60.29.231.1����ͨIP��
eth1�����ļ��̶���114.80.66.145 255.255.255.192 114.80.66.1������IP��

eth1:�����ţ�
114.80.66.145(IP��ַ)
255.255.255.192(����)
114.80.66.1(����)

eth0: ����ͨ��
60.29.231.160(IP��ַ)
255.255.255.192(����)
ע�⣺�˴���Ҫ��������ͨ��gateway(����)

# vi /etc/iproute2/rt_tables
251 cnc (251������1-254֮�����⣬��������·�ɱ����е�һ��)
 
���ƴ��� ����ʾ��:
# vi /etc/rc.local
ip route add default via 60.29.231.1 dev eth0 src 60.29.231.160  table cnc
ip rule add from 60.29.231.160 lookup cnc
ip rule add to 60.29.231.160 lookup cnc
# reboot

˵����
��Ϊ��2����·���˷���������ķ�������
��������·�ɣ�ֻ���½�һ��cnc��·�ɱ��ɡ�
�Ƽ�ʹ�÷���2��

