build-docker:
	docker build -t quipuswap-sandbox-deployer .

bash:
	docker run \
		--platform=linux/amd64 --rm -it \
		-v $$(pwd):/shared \
		--workdir=/shared \
		quipuswap-sandbox-deployer bash

init:
	cp "truffle+5.5.0-tezos.4.patch" "quipuswap-core/patches/truffle+5.5.0-tezos.4.patch"
	sed -i '' 's/localhost/host.docker.internal/g' quipuswap-core/truffle-config.js