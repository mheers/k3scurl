all: build

include .env
export

build:
	docker build --build-arg K3S_VERSION=$(K3S_VERSION) --build-arg CURL_VERSION=$(CURL_VERSION) --no-cache=true -t mheers/k3scurl:$(K3S_VERSION)-$(CURL_VERSION) .

push:
	docker push mheers/k3scurl:$(K3S_VERSION)-$(CURL_VERSION)
