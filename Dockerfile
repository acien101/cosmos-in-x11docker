FROM ubuntu:14.04

RUN apt-get install -y curl wget
RUN wget https://raw.githubusercontent.com/BallAerospace/COSMOS/master/vendor/installers/linux_mac/INSTALL_COSMOS.sh
RUN bash INSTALL_COSMOS.sh
COPY Gemfile /home/root/Gemfile
COPY Gemfile.lock /home/root/Gemfile.lock
WORKDIR /home/root/
RUN /root/.rbenv/shims/gem install bundler:1.16.2
RUN /root/.rbenv/shims/bundle install
