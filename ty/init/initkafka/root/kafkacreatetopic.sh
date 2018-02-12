kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic db.historydevices
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic db.devices
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic db.historytracks
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic db.realtimealarms
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic db.realtimealarmraws
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic push.alarmapp
kafka-topics --delete --zookeeper  192.168.1.20:2181 --topic push.alarmpc
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic db.historydevices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic db.devices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic db.historytracks
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic db.realtimealarms
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic db.realtimealarmraws
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic bms.index
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic push.alarmapp
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 2 --partitions 384 --topic push.alarmpc
kafka-consumer-groups --bootstrap-server 192.168.1.20:9092 --group bmsdb --reset-offsets --to-earliest --all-topics --execute
kafka-consumer-groups --bootstrap-server 192.168.1.20:9092 --group bmsdb --describe
exit
