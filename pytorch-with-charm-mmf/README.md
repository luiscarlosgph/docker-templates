Description
-----------

Image that contains a PyTorch + PyCharm + MMF development environment with CUDA support.

This image uses Python version 3.8.6 and CUDA version 10.2 with cuDNN 8. You can edit the [Dockerfile](https://github.com/luiscarlosgph/docker-templates/blob/main/pytorch-with-charm/Dockerfile) and easily change these versions. Raise an [Issue](https://github.com/luiscarlosgph/docker-templates/issues) if you do not manage to do it for a particular version and I will add it to the repo.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh luiscarlosgph/mmf:latest
```
You can change `luiscarlosgph/mmf:latest` and choose your favourite name for the image, e.g. simply `mmf:latest` or `johndoe/mmf:latest`.

Run the image
-------------

<!--
1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 
-->

1. Launch container: 
```bash
$ python3 -m dockerx.run --name wild_mmf --image luiscarlosgph/mmf:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `wild_mmf` to whatever you want, but make sure you use the same name in the next step.

2. Get a terminal in the container:
```bash
$ docker exec -it wild_mmf /bin/bash 
```

3. Run PyCharm within container: 
```bash
$ su docker  # the password is 'docker'
$ cd /home/docker
$ pycharm/bin/pycharm.sh
```

Configure container's PyCharm
-----------------------------

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version you are using for your user within the container. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).

When you create a new project, you have to configure PyCharm to use the `pyenv` Python interpreter. To do so, select `Previously configured interpreter`, then click on the dropdown `Add Interpreter`, select `System Interpreter`, and navigate to `~/.pyenv/shims/python`. The result should look like this:

![pycharm_config](https://user-images.githubusercontent.com/3996630/192641199-f43e0a9e-d44f-4c7c-9669-1e73cffc7a65.png)

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version you are using for your user within the container. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).
