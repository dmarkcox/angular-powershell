# Docker: The Basics
docker run -rm -ti ubuntu sleep 5
docker run -ti ubuntu bash -c "sleep 3; echo all done"
docker run -d -ti ubuntu bash
docker ps
docker attach suspicious_williams bash
docker run --name example -d ubuntu bash -c "/etc/password"
docker logs example

docker network ls	        List networks
docker network create	    Create a network
docker network inspect	    Display detailed information on one or more networks
docker network connect	    Connect a container to a network
docker network disconnect	Disconnect a container from a network
docker network prune	    Remove all unused networks
docker network rm	        Remove one or more networks

docker kill fevent_mclean
docker rm example

Container Networking
don't let containers fetch dependencies when they start
make containers include dependencies
dont leave important things in unnamed stopped containers
connect containers together
containers can talk to each other

expose/publish a port -- primate networks
Memory limits
docker run --memory maximum-allowed-memory image-name commandocker run -rm -ti -p 45678:45678 -p 45679:45679 --name echo-server ubuntu:14.04 bash

netcat:
nc -lp 45678 | nc -lp 45679
nc localhost 45678
nc localhost 45679
let's go!

nc -lp 45678 | nc -lp 45679
docker run -rm -ti ubuntu:14.04 bash

nc host.docker.internal 45678
docker run --rm --ti ubuntu:14.04 bash

docker port echo-server
nc localhost 32777
does it go?
nc localhost 32776

docker run-p 1234:1234
docker run -rm -ti -p 45678/upp --name echo-server ubuntu:14.04 bash

docker port echo-server
nc --u localhost 32771

docker network ls 
bridge network used by container that doesn't specify 
host
none no Networking

docker network create learning
put machines on network
docker run --rm --ti --net learning --name catserver
different containers in the network can use the name

nc -lp 1234
nc dogserver 1234

docker network create catsonly
docker network connect catsonly catserver
docker run --rm --ti --net catsonly --name bobcatserver ubuntu:14.04 bash

