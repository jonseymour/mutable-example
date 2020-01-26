build:
	docker build -t example .

run:
	docker run --name mutable example
	docker start -a mutable
	docker cp bar mutable:/usr/local/bin/foo
	docker start -a mutable
	docker rm mutable >/dev/null

clean:
	-docker rm mutable