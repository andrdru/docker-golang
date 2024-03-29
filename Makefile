VERSION_PATCH=1.8.0
VERSION_MINOR=1.8

.PHONY: build
build:
	docker build --no-cache -t andrdru/golang-ci:latest -t andrdru/golang-ci:$(VERSION_MINOR) -t andrdru/golang-ci:$(VERSION_PATCH) .

.PHONY: push
push:
	docker push andrdru/golang-ci:latest
	docker push andrdru/golang-ci:$(VERSION_PATCH)
	docker push andrdru/golang-ci:$(VERSION_MINOR)
