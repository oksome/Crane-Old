# This is a vanilla Debian 7.2 debootstrap image:
FROM okso/7.2

# ----- Installing Salt -----

RUN apt-get install wget
RUN echo "deb http://debian.saltstack.com/debian wheezy-saltstack main" >> /etc/apt/sources.list
RUN wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y python-zmq 
RUN apt-get install -y salt-common salt-minion salt-master

# ----- Setting up the config -----
# This will clone the Crane repository in the container, installing it's Salt config
# and launch a state.highstate on it.

RUN cp /etc/salt/minion /etc/salt/minion.orig
ADD ./minion /etc/salt/minion
RUN cd /tmp; git clone https://github.com/oksome/Crane.git; mv /tmp/Crane/salt /srv/salt

# For ease of debugging, Docker stops all services between each step. The bad
# side is that we have to relaunch all services for every command.

RUN service salt-master start; service salt-minion start; sleep 5; salt-key -a '*' -y; salt '*' state.hightstate

RUN service salt-master start; service salt-minion start; sleep 1; salt '*' state.highstate

# ---- Extra setup for SSH access -----

RUN apt-get install -y openssh-server vim git
RUN echo 'root:toor' | chpasswd

EXPOSE 22

CMD /usr/sbin/sshd -D
