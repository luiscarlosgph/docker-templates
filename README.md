Description
-----------

Dockerfile respository for different tasks.


Prerequisites
-------------

As usual when working with Docker, your user needs to be member of the `docker` group.

You can run `$ groups` to check which groups your user belongs to, and `$ usermod -a -G docker jdoe` to add the user `jdoe` to the group `docker`.


How to use any of the templates
-------------------------------

1. Clone this repository: `$ `

2. Build image: `$ `

3. Launch container: `$ `

4. Get a terminal of the container: `$ `

List of templates
-----------------

* [pycharm-mmf](pycharm-mmf): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download) + [MMF](https://mmf.sh) inside the container.
