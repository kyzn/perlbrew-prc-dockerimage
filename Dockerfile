FROM ubuntu:16.04
MAINTAINER Kivanc Yazan <kyzn@cpan.org>

# Use bash instead of sh
SHELL ["/bin/bash", "-c"]

# Install a couple dependencies + extra packages
RUN apt-get update --fix-missing
RUN apt-get install -y \
    apt-utils \
    build-essential \
    curl \
    emacs \
    gcc \
    git \
    gpp \
    libncurses5-dev \
    libreadline-dev \
    libssl-dev \
    man \
    nano \
    tmux \
    vim
RUN apt-get autoremove -y
RUN apt-get autoclean -y

# These two variables come up missing after install
ENV PERLBREW_PATH=/root/perl5/perlbrew/bin:/root/perl5/perlbrew/perls/perl-5.28.0/bin
ENV PERLBREW_MANPATH=/root/perl5/perlbrew/perls/perl-5.28.0/man

# Install perlbrew & perl & cpanm
RUN curl -L https://install.perlbrew.pl | bash
RUN echo "source /root/perl5/perlbrew/etc/bashrc" >> /root/.bashrc
RUN /root/perl5/perlbrew/bin/perlbrew install -j 4 perl-5.28.0
RUN /root/perl5/perlbrew/bin/perlbrew switch perl-5.28.0
RUN /root/perl5/perlbrew/bin/perlbrew install-cpanm

# PATH is set when you run -it, but we need to add this here
#  to get setup working properly
ENV PATH=/root/perl5/perlbrew/bin:/root/perl5/perlbrew/perls/perl-5.28.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Install dzil and a few more modules
RUN /root/perl5/perlbrew/bin/cpanm Dist::Zilla Term::ReadLine::Gnu Reply
