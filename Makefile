VERSION_PATCH=1.6.14
VERSION_MINOR=1.6

.PHONY: build
build:
	docker build -t andrdru/golang-ci:latest -t andrdru/golang-ci:$(VERSION_MINOR) -t andrdru/golang-ci:$(VERSION_PATCH) .

.PHONY: push
push:
	docker push andrdru/golang-ci:latest
	docker push andrdru/golang-ci:$(VERSION_MINOR)
	docker push andrdru/golang-ci:$(VERSION_PATCH)
