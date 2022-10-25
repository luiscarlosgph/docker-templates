Description
-----------

Image that contains a PyTorch development environment with CUDA support.


Versions available
------------------

* [PyTorch 1.9.0 + CUDA 10.2](1.9.0+cu102): Python version 3.8.6 and cuDNN 8.
* [PyTorch 1.12.1 + CUDA 11.6](1.12.1+cu116): Python version 3.9.13 and cuDNN 8.

Although these are the versions I have available, you can easily edit the Dockerfile and change the versions to your preferred ones. 
Raise an [Issue](https://github.com/luiscarlosgph/docker-templates/issues) if you do not manage to do it for a particular version and I will add it to the repo.


How to deploy it
----------------
```bash
# Get into the folder of your preferred version
$ cd 1.9.0+cu102

# Give execution permissions
$ chmod +x build.sh

# Build image
$ ./build.sh luiscarlosgph/pytorch:latest
```
You can change `luiscarlosgph/pytorch:latest` and choose your favourite name for the image, e.g. simply `torch:latest` or `johndoe/pytorch:latest`.


Run the image
-------------

<!--
1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 
-->

1. Launch container: 
```bash
$ python3 -m dockerx.run --name wild_pytorch --image luiscarlosgph/pytorch:latest --nvidia 1 --command 'sleep infinity'
```
You can change the name of the container from `wild_pytorch` to whatever you want, but make sure you use the same name in the next step.

2. Get a terminal in the container:
```bash
$ docker exec -it wild_pytorch /bin/bash 
```

3. Run Python within container: 
```bash
$ su docker  # the password is 'docker'
$ cd /home/docker
$ python
Python 3.8.6 (default, Sep 28 2022, 15:20:28) 
[GCC 7.5.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import torch
>>> torch.__version__
'1.9.0+cu102'
>>> torch.cuda.is_available()
True
```

This Docker image comes with `pyenv` already installed in the container. `pyenv` allows you to easily change the Python version you are using for your user within the container. More info [here](https://github.com/luiscarlosgph/how-to/tree/main/pyenv).
