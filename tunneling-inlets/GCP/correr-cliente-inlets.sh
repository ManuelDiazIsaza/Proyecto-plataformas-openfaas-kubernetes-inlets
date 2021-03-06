#!/usr/bin/env bash
REMOTE="35.233.168.70:8090"
TOKEN="8c1cd50e2711db3d2b932ef72c562f2c36bb49dfffe0d86e174789d7b4e6bfc2"
DIGEST="sha256:e1ae8711fa5a7ee30bf577d665a7a91bfe35556f83264c06896765d75b84a990"
UPSTREAM="http://192.168.99.100:31112"
docker run \
--interactive --tty \
--net=host \
--env=REMOTE=${REMOTE} \
--env=TOKEN=${TOKEN} \
inlets/inlets@${DIGEST} \
client \
--remote=${REMOTE} \
--upstream=${UPSTREAM} \
--token=${TOKEN} 
