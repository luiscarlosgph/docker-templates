Description
-----------

Dockerfile respository for different tasks.


Prerequisites
-------------

* **Docker**: follow [this](https://github.com/luiscarlosgph/how-to/tree/main/docker) guide to install it.
* **dockerx**: follow [this](https://github.com/luiscarlosgph/dockerx) guide to install it.

<!--
As usual when working with Docker, your user needs to be member of the `docker` group.
You can run `$ groups` to check which groups your user belongs to, and `$ usermod -a -G docker jdoe` to add the user `jdoe` to the group `docker`.
-->


How to use any of the templates
-------------------------------

1. Clone this repository: 
    ```
    $ git clone git@github.com:luiscarlosgph/docker-templates.git
    $ cd docker-templates
    ```

2. Build the image you want to deploy: 
    ```
    $ cd <image_dir>
    $ chmod +x build.sh
    $ ./build.sh <your_favourite_image_name>
    ```
    
    For example, for the `luiscarlosgph/pycharm:latest` image:
    ```
    $ cd pycharm
    $ chmod +x build.sh
    $ ./build.sh luiscarlosgph/pycharm:latest
    ```
    You do not need to follow the `luiscarlosgph/pycharm:latest` syntax, you can simply write `whatever` as name of the image.
    <!--More info on the parameters of `docker build` [here](https://docs.docker.com/engine/reference/commandline/build).-->

3. Launch container: 
   <!--
   * Syntax: `$ docker run --name <container_name> <image_name>:<image_tag>`
   
    For example, for the image `luiscarlosgph/pycharm:latest` and container name `wild_turin`:
    ```
    $ docker run --name wild_turin luiscarlosgph/pycharm:latest 
    ```
    
    More info on the parameters of `docker run` (e.g. to mount volumes from your host system) [here](https://docs.docker.com/engine/reference/run).
    
    If you run your container with `docker run` as above, you will not be able to run graphical programs (e.g. PyCharm, MATLAB) inside the container.
    For these cases you can use [dockerx](https://github.com/luiscarlosgph/dockerx) instead, e.g. to deploy the `pycharm-mmf` image:
   -->
    ```
    $ python -m dockerx.run --name <container_name> --image <image_name> --nvidia 1 --command 'sleep infinity'
    ```
    
    For example, for the `luiscarlosgph/pycharm:latest` image:
    ```
    $ python -m dockerx.run --name wild_turin --image luiscarlosgph/pycharm:latest --nvidia 1 --command 'sleep infinity'
    ```
    
    [dockerx](https://github.com/luiscarlosgph/dockerx) also allows you to mount volumes and set environment variables using the parameters `--volume` and `--env`. <!-- You can find more details about the parameters [here](https://github.com/luiscarlosgph/dockerx). -->
    More info [here](https://github.com/luiscarlosgph/dockerx).
    
    <!--
    The syntax is `--volume '<source_path_in_host>:<target_path_in_container>'`. For example, `--volume '/home/jdoe/datasets:/home/docker/datasets'`. 
    
    Similarly, you can add as many environment variables as you like with `--env`. The syntax is `--env '<key>=<value>'`. For example, `--env 'PATH=/usr/local/cuda/bin:$PATH'`.
    -->

4. Get a terminal of the container:

    ```
    $ docker exec -it <container_name> <terminal_path>
    ```

    For example, for the container named `wild_turin`:
    ```
    docker exec -it wild_turin /bin/bash 
    ```
    More info on the parameters of `docker exec` [here](https://docs.docker.com/engine/reference/commandline/exec).


List of templates
-----------------

If you click on any template below, you will see a guide on how to use it.

* [pycharm](pycharm): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyCharm](https://www.jetbrains.com/pycharm/download)

* [vscode](pycharm): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [vscode](https://code.visualstudio.com)

* [pytorch](pytorch): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally)

* [pytorch-with-vscode](pytorch-with-vscode): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [vscode](https://code.visualstudio.com)

* [pytorch-with-charm](pytorch-with-charm): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download)

* [pytorch-with-charm-mmf](pytorch-with-charm-mmf): development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download) + [MMF](https://mmf.sh)







