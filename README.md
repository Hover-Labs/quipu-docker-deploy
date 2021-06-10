# Quipu sandbox deployer

This is a wrapper around the quipuswap-core repo to tweak things to build properly and deploy them to the hover labs sandbox.

## Do the thing

Assumptions:
- You're running this from a docker container (otherwise update truffle-config.js to point to the right node)
- You've mapped things via an ssh tunnel to localhost

```
$ git clone --recurse-submodules git@github.com:Hover-Labs/quipu-docker-deploy.git
$ make init build-docker bash

--- Inside the docker image ---

$ yarn migrate
```

## Makefile

**init**: Patches the freshly checked-out quipuswap-core stuff to operate correctly
**build-docker**: Does what it sounds like
**bash**: Drops you into a bash shell inside the container, ready to run ``