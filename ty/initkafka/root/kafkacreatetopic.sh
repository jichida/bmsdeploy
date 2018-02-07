kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.historydevices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.devices
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.historytracks
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.realtimealarms
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic db.realtimealarmraws
kafka-topics --create --zookeeper  192.168.1.20:2181 --replication-factor 1 --partitions 48 --topic bms.index
kafka-consumer-groups --zookeeper  192.168.1.20:2181 --group bmsmaster --reset-offsets --to-earliest --all-topics --execute
kafka-consumer-groups --zookeeper  192.168.1.20:2181 --group bmsdb --reset-offsets --to-earliest --all-topics --execute
