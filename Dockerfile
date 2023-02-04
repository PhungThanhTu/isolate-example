FROM ubuntu:latest
WORKDIR /usr/local/etc/isolate
COPY . .
RUN apt-get update && apt-get -y install gcc && apt-get -y install libcap-dev && apt-get install make && apt-get -y install g++
RUN make isolate
ENV PATH="/usr/local/etc/isolate:$PATH"

