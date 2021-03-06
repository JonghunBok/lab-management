#!/bin/bash
systemd_path=/etc/systemd/system/docker.service.d/

touch $systemd_path 2> /dev/null || mkdir $systemd_path
cd $systemd_path

echo '[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H 0.0.0.0:2375 --containerd=/run/containerd/containerd.sock' > startup_options.conf

systemctl daemon-reload
systemctl restart docker
