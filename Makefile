
all: build

build:
	docker build -t lukaspustina/bosun_server .

start: ../data
	docker run -d -p 4242:4242 --volume=`pwd`/../data/hbase-root:/tmp/hbase-root --name=bosun_server lukaspustina/bosun_server

../data:
	mkdir $@

stop:
	docker stop bosun_server
	docker rm bosun_server

status:
	docker ps | grep bosun_server

