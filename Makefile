.PHONY: help
# target: help - Display callable targets
help:
	@egrep "^# target:" [Mm]akefile

.PHONY: build
# target: build - Build a local (development) version of the container
build:
	docker build --tag terminal1/ml:dev .

.PHONY: debug
# target: debug - SSH to the development container instance
debug:
	docker run -it terminal1/ml:dev /bin/sh
