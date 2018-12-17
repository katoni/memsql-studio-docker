# How to use this image
## Starting MemSQL Studio
```
$ docker run --name memsql-studio -p 8080:8080 -d katoni/memsql-studio:tag
```
# Caveats
## Where to Store Data
The Docker documentation is a good starting point for understanding the different storage options and variations, and there are multiple blogs and forum postings that discuss and give advice in this area. We will simply show the basic procedure here for the latter option above:
1. Create a data directory on a suitable volume on your host system, e.g. /my/own/datadir.

2. Start your `MemSQL Studio` container like this:
    ```
    $ docker run --name memsql-studio -v /my/own/datadir:/var/lib/memsql-studio -d katoni/memsql-studio:tag
    ```