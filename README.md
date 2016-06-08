# weeslack-docker

## Building

`docker build -t weeslack .`

## Running

`./weeslack`

Basic interactive session.

`WEESLACK_DOCKER_OPTIONS="--name weeslack" ./weeslack`

Interactive session with named container. This ensures you only run
one instance at a time.

`WEESLACK_DOCKER_OPTIONS="--detach" ./weeslack`

Run in the background. If you're using Relay function
