#!/bin/sh

cat <<EOF | mustache - dockerfile.mustache > ./debian.dockerfile
---
debian: true
---
EOF

#cat <<EOF | mustache - dockerfile.mustache > ./alpine.dockerfile
#---
#alpine: true
#---
#EOF
