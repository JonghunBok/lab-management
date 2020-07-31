#!/bin/bash

echo `readlink -m $1`

tar -czvf $1.tar.gz $1

# tar-zxvf $1 <- Extract the compressed tarball.
