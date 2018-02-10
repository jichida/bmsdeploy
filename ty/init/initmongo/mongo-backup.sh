rm -rf /tmp/mongodump && mkdir /tmp/mongodump
docker run -it --rm --link mongo:3.4 -v /tmp/mongodump:/tmp mongo bash -c 'mongodump -v --host 192.168.1.20:27007 --db bms --out=/tmp'
tar -cvf ./bms.tar -C /tmp/mongodump *
rm -rf /tmp/mongodump
