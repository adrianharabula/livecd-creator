FROM fedora:28

## Install livecd-creator
RUN dnf install -y livecd-tools

## Folder where ks files will be mounted
## and the resulting iso will be written
RUN mkdir /ks

## Set WORKDIR, any command will be executed from this folder
WORKDIR /ks

## Set ENTRYPOINT
ENTRYPOINT exec /usr/bin/livecd-creator --config=${KS_FILE:=custom.ks} --releasever=${RELEASEVER:=28} --cache=${CACHEDIR:=/var/cache/live} --tmpdir=${TMPDIR:=/var/tmp}
