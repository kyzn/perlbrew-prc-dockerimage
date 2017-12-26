# perlbrew-prc-dockerimage
This repository contains the dockerimage file for a container that would give you an environment that has perlbrew, perl, cpanm and dzil. It is intended to be helpful especially for [CPAN Pull Request Challenge](http://cpan-prc.org), hence the name.

# How to get the image
I highly recommend just getting built image from [Docker Hub](https://hub.docker.com/r/kyzn/perlbrew-prc/).
- Install Docker-CE ([mac](https://docs.docker.com/docker-for-mac/install/), [windows](https://docs.docker.com/docker-for-windows/install/), [ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04))
- `docker run -it kyzn/perlbrew-prc`

That's it! Alternatively, if you want to build this by yourself you can do the following. Be warned that this might take some time.
- `git clone https://github.com/kyzn/perlbrew-prc-dockerimage`
- `cd perlbrew-prc-dockerimage .`
- `docker build -t kyzn/perlbrew-prc:5.26.1 .`

# How to use it (for PRC)

WIP

# Attribution

This work is partly based on:
- [Chris Weyl's perlbrew-base docker image](https://github.com/rsrchboy/perlbrew-base-dock/blob/master/Dockerfile), and
- [Viktor Voronin's perlbrew docker image](https://github.com/vvoronin/docker-images/blob/master/perlbrew/Dockerfile).
