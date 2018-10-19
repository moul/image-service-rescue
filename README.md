# Official Rescue image on Scaleway

[![Travis](https://img.shields.io/travis/scaleway/image-service-rescue.svg)](https://travis-ci.org/scaleway/image-service-rescue)

Scripts to build the official Rescue image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the official [Ubuntu](https://github.com/scaleway/image-ubuntu) image.

__NOTE: The Rescue image is not a typical image and is only available as a RAM-based image by booting [using the Rescue bootscript](https://www.scaleway.com/docs/perform-rescue-action-on-my-server).__

<img src="http://pixabay.com/get/6c00e62840888a242f93/1430925682/helmet-158268_1280.png?direct" width="350px" />


---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)


---

## Install

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create_an_image_with_docker))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)


---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/) [![GuardRails badge](https://badges.production.guardrails.io/moul/image-service-rescue.svg)](https://www.guardrails.io)
