cd /root
rm fr ./*.tar.gz
tar -czvf ./bms.tar.gz ./bms/deploy/kafkadb
tar -czvf ./bmsdeploy.tar.gz ./bmsdeploy
scp /root/*.tar.gz root@192.168.1.20:/root/
scp /root/*.tar.gz root@192.168.1.114:/root/
scp /root/*.tar.gz root@192.168.1.136:/root/
scp /root/*.tar.gz root@192.168.1.45:/root/
