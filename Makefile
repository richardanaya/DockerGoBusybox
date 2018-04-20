build: build-go
	docker build -t hello-world-go-server .
	rm -f server

build-go:
	docker run --rm -v "$(shell pwd)":/code -w /code golang go build server.go

run:
	docker run --rm -p 9001:80 hello-world-go-server

clean:
	docker image prune -f
	docker container prune -f
