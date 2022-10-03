Description
-----------

Image that contains a PyTorch + PyCharm development environment with CUDA support.

This image uses Python version 3.8.6 and CUDA version 10.2 with cuDNN 8. You can edit the [Dockerfile](https://github.com/luiscarlosgph/docker-templates/blob/main/pytorch-with-charm/Dockerfile) and easily change these versions. Raise an [Issue](https://github.com/luiscarlosgph/docker-templates/issues) if you do not manage to do it for a particular version and I will add it to the repo.

How to deploy it
----------------
```bash
$ chmod +x build.sh
$ ./build.sh luiscarlosgph/pytorch-with-charm:latest
```
You can change `luiscarlosgph/pytorch-with-charm:latest` and choose your favourite name for the image, e.g. simply `torch:latest` or `johndoe/pytorch:latest`.

Run the image
-------------

<!--
1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 
-->

1. Launch container: 
```bash
$ python3 -m dockerx.run --name pytorch_pycharm --image luiscarlosgph/pytorch-with-charm:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `pytorch_pycharm` to whatever you want, but make sure you use the same name in the next step.

2. Get a terminal in the container:
```bash
$ docker exec -it pytorch_pycharm /bin/bash 
```

3. Run PyCharm within container: 
```bash
$ su docker  # the password is 'docker'
$ cd /home/docker
$ pycharm/bin/pycharm.sh
```

Configure Visual Studio Code
----------------------------

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version you are using for your user within the container. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).

When you create a new project, you have to configure vscode to use the `pyenv` Python interpreter. To do so, install the [Python extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python) and select the Python interpreter located at `/home/docker/.pyenv/shims/python`, as you can see in the image below:

![vscode](https://user-images.githubusercontent.com/3996630/192848571-47a233d2-806d-4caa-820d-229de5495b51.png)
