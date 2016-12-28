TAG?=latest
IMAGENAME?=jtilander/niftycelery

.PHONY: image push

image:
	docker build -t $(IMAGENAME):$(TAG) .

push: image
	docker push $(IMAGENAME):$(TAG) .
