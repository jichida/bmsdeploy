rm -rf /tmp/mongodump && mkdir /tmp/mongodump
tar -xzvf /root/bmsdb/bms.tar.gz -C  /tmp/mongodump
docker run -it -v /tmp/mongodump:/tmp mongo:3.4 bash -c 'mongorestore --host 192.168.1.20:27007 --db bmsp --dir /tmp/dump/bms'
