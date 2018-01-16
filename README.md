# perlbrew-prc-dockerimage
This repository contains the dockerimage file for a container that would give you an environment that has perlbrew, perl, cpanm and dzil. It is intended to be helpful especially for [CPAN Pull Request Challenge](http://cpan-prc.org), hence the name.

# How to get the image
Getting image from [Docker Hub](https://hub.docker.com/r/kyzn/perlbrew-prc/) is recommended.
- Install Docker-CE (CE for Community Edition)
  - [Instructions for OSX](https://docs.docker.com/docker-for-mac/install/)
  - [Instructions for Windows](https://docs.docker.com/docker-for-windows/install/)
  - [Instructions for Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04), or you can do `sudo apt-get install docker.io`
- Since this image is not multi-architecture, you should find your arch: i686 or x86_64
- `docker run -it kyzn/perlbrew-prc:i686` or `docker run -it kyzn/perlbrew-prc:x86_64`

That's it! Alternatively, if your architecture is not supported, or you want to build the image by yourself you can do so by cloning repository. Be warned that this might take some time.
- `git clone https://github.com/kyzn/perlbrew-prc-dockerimage`
- `cd perlbrew-prc-dockerimage .`
- `docker build -t kyzn/perlbrew-prc:my_build .`

# How to use it (for PRC)

Clone the repository you are going to work on to your local machine, let's assume it's `kyzn/WWW-Eksi`.
- `git clone https://github.com/kyzn/WWW-Eksi`

Then run docker with mounting repository.
- `docker run -v /home/kivanc/Desktop/WWW-Eksi:/WWW-Eksi -it kyzn/perlbrew-prc:x86_64`

That's it! You can now edit locally, and build/test/run in the container.


# Attribution

This work is partly based on:
- [Chris Weyl's perlbrew-base docker image](https://github.com/rsrchboy/perlbrew-base-dock/blob/master/Dockerfile), and
- [Viktor Voronin's perlbrew docker image](https://github.com/vvoronin/docker-images/blob/master/perlbrew/Dockerfile).

i686 image was made possible by [ZipRecruiter](https://www.ziprecruiter.com), thanks!
