build:
	docker build -t flask-hello/flask-hello:latest .
run:
	docker run --rm --name=hello -p 5001:5000 -d flask-hello/falsk-hello:latest
stop:
	docker stop -t 0 hello
