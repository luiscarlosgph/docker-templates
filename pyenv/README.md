Description
-----------

Image that contains a PyCharm development environment with CUDA support.

This image uses Python version 3.8.6 and CUDA version 10.2 with cuDNN 8. You can edit the [Dockerfile](https://github.com/luiscarlosgph/docker-templates/blob/main/pycharm/Dockerfile) and easily change these versions. Raise an [Issue](https://github.com/luiscarlosgph/docker-templates/issues) if you do not manage to do it for a particular version and I will add it to the repo.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh luiscarlosgph/pyenv:latest
```
You can change `luiscarlosgph/pyenv:latest` and choose your favourite name for the image, e.g. simply `pyenv:latest` or `johndoe/pyenv:latest`.

Run the image
-------------

1. Launch container: 
```bash
$ python3 -m dockerx.run --name wild_pyenv --image luiscarlosgph/pyenv:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `wild_pyenv` to whatever you want, but make sure you use the same name in the next step.

2. Get a terminal in the container:
```bash
$ docker exec -it wild_pyenv /bin/bash 
```

3. Run PyCharm within container: 
```bash
$ su docker  # the password is 'docker'
$ cd /home/docker
$ pyenv versions

```

