rm -rf /tmp/mongodump && mkdir /tmp/mongodump
tar -xzvf /root/bms.tar.gz -C  /tmp/mongodump
docker run -it -v /tmp/mongodump:/tmp mongo:3.4 bash -c 'mongorestore --host 192.168.1.20:27007 --db bmsnew --dir /tmp/dump/bms'
