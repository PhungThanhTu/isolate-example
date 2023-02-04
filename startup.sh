docker build -t isolate-engine .
docker run --privileged -it --name isolate-container -v $(PWD)/example:/usr/local/etc/isolate/example/ isolate-engine