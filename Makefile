build-docker:
	docker build -t quipuswap-sandbox-deployer .

bash:
	docker run \
		--platform=linux/amd64 --rm -it \
		-v $$(pwd):/shared \
		--workdir=/shared/quipuswap-core \
		quipuswap-sandbox-deployer bash

init:
	git apply patches/patch-all.patch