build-docker:
	docker build -t quipuswap-sandbox-deployer .

bash:
	docker run \
		--platform=linux/amd64 --rm -it \
		-v $$(pwd):/shared \
		--workdir=/quipuswap-core \
		quipuswap-sandbox-deployer bash

run:
	docker run --rm -it --workdir=/quipuswap-core quipuswap-sandbox-deployer npm run migrate

init:
	git apply patches/patch-all.patch
