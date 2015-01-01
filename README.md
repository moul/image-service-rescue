Official Rescue image on Online Labs
====================================

Scripts to build the official Rescue image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and is based on the official [Ubuntu](https://github.com/online-labs/image-ubuntu) image.

The Rescue image is not a typical image and is only available as a RAM-based image by booting using the Rescue bootscript.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.**

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

Commands
--------

    # build the image in a rootfs directory
    $ make rootfs

    # push the rootfs.tar on s3
    $ make publish_on_s3.tar

Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands