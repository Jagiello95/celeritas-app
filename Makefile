


## build: builds all binaries
build:
	@go mod vendor
	@go build
	@echo Celeritas built!

run: build
	@echo Staring Celeritas...
	@go run myapp
	@echo Celeritas started!

clean:
	@echo Cleaning...
	@DEL ${BINARY_NAME}
	@go myapp
	@echo Cleaned!
start_compose:
	docker-compose up

stop_compose:
	docker-compose down

test:
	@echo Testing...
	@go test ./...
	@echo Done!

start: run
	
stop:
	@echo "Starting the front end..."
	@taskkill /IM ${BINARY_NAME} /F
	@echo Stopped Celeritas

restart: stop start