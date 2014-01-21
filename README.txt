Setup
=====

Follow the instructions provided by [[Resin.io|http://resin.io/blog/docker-on-raspberry-pi-in-4-simple-steps/]] to get a working Arch Linux install with Docker running on your raspberry pi.

Build the image:
```bash
$ git clone https://github.com/jontg/docker-ulfhedinn.git
$ pushd docker-ulfhedinn/images/tt-rss
$ docker build -rm -t rpi-tt-rss .
$ popd
```

Run the image:
```bash
$ ./bin/run.sh
```
