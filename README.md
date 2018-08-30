# livecd-creator
Official Fedora tool to create custom LiveCD, now running in a Docker container.

Sample usage:
```
docker run \
--rm \
--privileged=true \
-v /path/to/ks/files:/ks \
-v /var/cache/live:/var/cache/live \
adrianharabula/livecd-creator --config=custom.ks --releasever=28 --fslabel=customlinux --cache=/var/cache/live --tmpdir=/var/tmp
```
