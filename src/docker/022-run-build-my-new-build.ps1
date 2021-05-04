# run this command to use a directory called docker in the branch container:
# docker build https://github.com/docker/rootfs.git#container:docker
# if you pass an URL to a remote tarball, the URL itself is sent to the daemon:
# docker build http://server/context.tar.gz
# docker build -< Dockerfile
Get-Content Dockerfile | docker build -