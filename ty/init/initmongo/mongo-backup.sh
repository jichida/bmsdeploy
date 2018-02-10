rm -rf /tmp/mongodump && mkdir /tmp/mongodump
docker run -it -v /tmp/mongodump:/tmp mongo:3.4 bash -c 'mongodump -v --host 192.168.1.20:27007 --db bms --out=/tmp'
tar -cvfz ./bms.tar.gz  /tmp/mongodump
rm -rf /tmp/mongodump
