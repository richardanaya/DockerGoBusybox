build: build-go
	docker build -t hello-world-go-server .
	rm server

build-go:
	GOOS=linux go build server.go

run:
	docker run -p 9001:80 hello-world-go-server

clean:
	docker image prune -f
	docker container prune -f
