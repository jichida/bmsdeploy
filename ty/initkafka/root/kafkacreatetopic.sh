kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.historydevices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.devices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.historytracks
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.realtimealarms
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.realtimealarmraws
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic bms.index
kafka-consumer-groups --bootstrap-server 192.168.1.20:9092  --group bmsmaster --describe
kafka-consumer-groups --bootstrap-server 192.168.1.20:9092  --group bmsdb --describe
exit
