
����vos2009������
�жϵ�ǰͨ��
��¼SSH����ֹvos����
etcinit.dmbx2009d stop
etcinit.dvos2009dall stop
etcinit.dmysql stop
cd varlibmysql
cp -dprf vosdb rootvosdbdate�����ݱ��ݵ���rootĿ¼�£���vosdb���棩 
etcinit.dmysql start
etcinit.dvos2009dall start
etcinit.dmbx2009d start
etcinit.dmysql start
cd root
tar -jcvf vosdb.bz2 vosdbdate ѹ��vosdbdate�ļ� ѹ�����ƶ����Լ��Ļ����ϡ� 

����vos3000������
etcinit.dmbx3000d stop
etcinit.dvos3000dall stop
etcinit.dmysql stop
cd varlibmysql
du -h vosdb
cp -dprf vos3000db rootvos3000dbdate�����ݱ��ݵ���rootĿ¼�£���vos3000dbdate���棩 
etcinit.dmysql start
etcinit.dvos3000dall start
etcinit.dmbx3000d start
etcinit.dmysql start
cd root
tar -jcvf vosdb.bz2 vos3000dbdate ѹ��vosdbdate�ļ� ѹ�����ƶ����Լ��Ļ����ϡ�

�ָ�vos2009����
������б������ݵ�Ŀ¼(����ΪrootĿ¼��)
tar -jxvf vosdb.bz2
cd rootvosdb
etcinit.dvos2009dall stop
etcinit.dmysql stop
cd varlibmysqlvosdb
mv e_phonecard rootvosdb
rm -rf 
cd rootvosdb
mv  varlibmysqlvosdb
etcinit.dmysql start
etcinit.dvos2009dall start

�ָ�vos3000���ݣ����Ը���vos2009���ݻָ�������