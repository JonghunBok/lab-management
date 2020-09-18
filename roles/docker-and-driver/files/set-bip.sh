mkdir -p /etc/docker
pushd /etc/docker

echo '{
  "bip": "172.26.0.1/16"
}' > daemon.json

popd


