rm -rf $TMP_DIR && mkdir $TMP_DIR
if [[ $1 =~ \.tar$ ]];
then
	#FILENAME=$(echo $1 | sed 's/.*\///')
	FILENAME=$2"/"
	mkdir $TMP_DIR
	echo "Data will be extracted into :"$TMP_DIR
	tar -C $TMP_DIR -xvf $1
else
	FILENAME=$(echo $1 | sed 's/.*\///')
	cp $1 $TMP_DIR$FILENAME
fi

docker run -it -v $TMP_DIR:/tmp mongo:3.4 bash -c 'mongorestore --drop -v --host 192.168.1.20:27007 --db '$2' /tmp/'$FILENAME
rm -rf $TMP_DIR
