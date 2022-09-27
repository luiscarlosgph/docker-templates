Description
-----------

Image that contains a PyCharm development environment with CUDA support.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh
```

Run the image
-------------

1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 

2. Run PyCharm within container: `$ python3 -m dockerx.run --name wild_turin --image luiscarlosgph/pycharm:latest --nvidia 1 --command '/home/docker/pycharm/bin/pycharm.sh'`

Configure container's PyCharm
-----------------------------

TODO
