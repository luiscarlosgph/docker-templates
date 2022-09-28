Description
-----------

Image that contains a PyCharm development environment with CUDA support.

This image uses Python version 3.8.6 and CUDA version 10.2 with cuDNN 8. You can edit the [Dockerfile](https://github.com/luiscarlosgph/docker-templates/blob/main/vscode/Dockerfile) and easily change these versions. Raise an [Issue](https://github.com/luiscarlosgph/docker-templates/issues) if you do not manage to do it for a particular version and I will add it to the repo.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh luiscarlosgph/vscode:latest
```
You can change `luiscarlosgph/vscode:latest` and choose your favourite name for the image, e.g. simply `code:latest` or `johndoe/vscode:latest`.

Run the image
-------------

<!--
1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 
-->

1. Launch container: 
```bash
$ python3 -m dockerx.run --name wild_vscode --image luiscarlosgph/vscode:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `wild_vscode` to whatever you want, but make sure you use the same name in the next step.

2. Get a terminal in the container:
```bash
$ docker exec -it wild_vscode /bin/bash 
```

3. Run Visual Studio Code within container: 
```bash
$ su docker  # the password is 'docker'
$ cd /home/docker
$ code
```

Configure container's Visual Studio Code
----------------------------------------

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version you are using for your user within the container. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).

When you create a new project, you have to configure vscode to use the `pyenv` Python interpreter. To do so, ...
