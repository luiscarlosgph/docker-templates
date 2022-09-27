Description
-----------

Image that contains a PyCharm development environment with CUDA support.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh luiscarlosgph/pycharm:latest
```
You can change `luiscarlosgph/pycharm:latest` and choose your favourite name for the image, e.g. simply `charm:latest` or `johndoe/pycharm:latest`.

Run the image
-------------

1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 

2. Launch container: 
```bash
$ python3 -m dockerx.run --name wild_pycharm --image luiscarlosgph/pycharm:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `wild_pycharm` to whatever you want, but make sure you use the same name in the next step.


3. Run PyCharm within container: 
```bash
$ docker exec -it wild_pycharm /bin/bash 
$ cd /home/docker
$ pycharm/bin/pycharm.sh
```

Configure container's PyCharm
-----------------------------

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).

The first time you run this image you have to configure PyCharm to use `pyenv`.
