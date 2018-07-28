HUGO_VERSION := 0.45.1

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

build-onbuild:
	docker build \
	    --file Dockerfile.onbuild \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION}-onbuild \
	    .

build-alpine:
	docker build \
	    --file Dockerfile.alpine \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION}-alpine \
	    .

build-circleci:
	docker build \
	    --file Dockerfile.circleci \
	    --build-arg HUGO_VERSION=${HUGO_VERSION} \
	    --tag mtinside/hugo:${HUGO_VERSION}-circleci \
	    .
