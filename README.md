## Building an OS from scratch for educational purposes.

## Prerequities:
1. Docker - Build environment
2. QEMU   - Testing the final version of our OS

* Build the Docker image with a tag `myos-buildenv`
```$ docker build . -t myos-buildenv```

* Create an container which we can exec and start the building process
```$ docker run --rm -it -v $pwd:/root/env myos-buildenv```

* Run the makefile
```$ make build-x86_64```

* exit out of the container
```$ exit ```

* Test the Final output using qemu
```$ qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso ```
