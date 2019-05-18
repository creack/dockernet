FROM ubuntu:19.04

RUN apt-get update
# dig, nslookup, etc.
RUN apt-get install -y dnsutils
# ifconfig.
RUN apt-get install -y net-tools
# ip.
RUN apt-get install -y iproute2
# ping & traceroute.
RUN apt-get install -y iputils-ping traceroute
# bash completion for those toools.
RUN apt-get install bash-completion
RUN echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc
