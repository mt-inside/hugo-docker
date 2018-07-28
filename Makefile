HUGO_VERSION := 0.45.1

build:
	docker build \
	    --file Dockerfile.download \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION} \
	    .

build-%:
	docker build \
	    --file Dockerfile.$* \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION}-$* \
	    .
