sudo docker run \
	--net nestor-network --ip 172.18.0.8 \
	-dit \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v $(which docker):/usr/bin/docker \
	--name jenkins-cdb-instance jenkins-cdb
