HUGO_VERSION := 0.36.1

build-download:
	docker build \
	    --file Dockerfile.download \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION} \
	    .

build-compile:
	docker build \
	    --file Dockerfile.compile \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION} \
	    .
