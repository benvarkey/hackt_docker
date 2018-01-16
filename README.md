The docker setup (_docker-compose_ file version 3.2) is based on Ubuntu 16.04 image, but with the following non-standard versions for various tools:

* gcc: 4.7
* bison: 2.3
* flex: 2.5.35

# Setup

Drop into a shell from the top-level folder and do

- <kbd>docker-compose build hackt</kbd>
- <kbd>docker-compose run --rm hackt</kbd>

This will launch a container and drop you into a shell. Once inside the container shell do

- <kbd>install_hackt.sh</kbd>

Now you should have HACKT compiled and installed under `/usr/local` inside the container.
The same compiled binaries are persistently saved in the host machine under `<top-level>/local`.
So, you can run `docker-compose run --rm hackt` as needed (from the top-level) to get a shell with HACKT in path.
