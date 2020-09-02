#!/bin/bash

echo `readlink -m $1`

tar -czvf $1.tar.gz $1

ansible-playbook -i ../../workers playbook.yml --extra-vars archive="$1.tar.gz" --extra-vars dest="$2"
