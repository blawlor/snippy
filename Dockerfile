FROM ubuntu:16.04

ADD /bin/snippy /usr/local/bin/snippy

# Update the repository sources list
RUN apt-get update

# Install perl modules 
RUN apt-get install -y cpanminus \
                       make

RUN cpanm FindBin::libs \
          Bio::SeqIO
