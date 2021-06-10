FROM --platform=linux/amd64 node:10-alpine

RUN apk add curl bash nodejs npm git python3 make build-base libc6-compat

COPY --from=ligolang/ligo:0.9.0 /bin/ligo /usr/bin/ligo
COPY --from=ligolang/ligo:0.9.0 /nix/ /nix/

COPY quipuswap-core/ /quipuswap-core/

WORKDIR /quipuswap-core

RUN yarn install

RUN sh -c 'echo "yarn migrate" > /root/.bash_history'