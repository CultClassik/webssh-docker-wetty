# webssh-docker-wetty [![Build Status](https://travis-ci.org/CultClassik/webssh-docker-wetty.svg?branch=master)](https://travis-ci.org/CultClassik/webssh-docker-wetty)
[Image on Docker Hub](https://hub.docker.com/r/cultclassik/webssh-wetty/)

Dockerfile to build a Wetty ssh web app.

All credit for this great app goes to this guy:
https://github.com/krishnasrinivas/wetty.git

## Pre-requisites

Docker!

## Installation

docker build -t cultclassik/webssh-wetty ./build

## Usage

docker run -d cultclassik/webssh-wetty -h myhost.mydomain.net -p 8022 -u myusername -x myuserpassword

Please put this container behind a reverse proxy that's using an SSL cert for the safety of your network :)

## TODO

Add a startup script so that docker run can pass the userid and password in, then set them in the container when run.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

2018-01-08
Project added to Github and builds configured.  Images deployed to Dockerhub.

## Credits

TODO: Write credits

## License

TODO: Write license
