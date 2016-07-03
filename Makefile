.PHONY: main run build vnc clean

main: run

build:
	docker build -t chusiang/takaojs1607 . | tee output.log

run:
	docker port $$(docker run --name e2e -d -P chusiang/takaojs1607) 5900

vnc:
	echo "open vnc://:secret@127.0.0.1:????"

clean:
	docker rm -f e2e

