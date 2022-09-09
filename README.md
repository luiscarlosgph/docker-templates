Description
-----------

Dockerfile respository for different tasks.


Prerequisites
-------------

* **Docker**: follow [this](https://github.com/luiscarlosgph/how-to/tree/main/docker) guide to install it.

<!--
As usual when working with Docker, your user needs to be member of the `docker` group.
You can run `$ groups` to check which groups your user belongs to, and `$ usermod -a -G docker jdoe` to add the user `jdoe` to the group `docker`.
-->


How to use any of the templates
-------------------------------

1. Clone this repository: 
    ```
    $ git clone git@github.com:luiscarlosgph/docker-templates.git
    ```

2. Generate the tarball of the image you want to deploy, e.g. for `pycharm-mmf`: 
    ```
    $ cd pycharm-mmf
    $ chmod +x ./generate_tarball.sh
    $ ./generate_tarball.sh
    ```

3. Build image: 
   * Syntax: `$ docker import <image_file> <image_name>:<image_tag>`
   
    For example, for `pycharm-mmf`:
    ```
    $ docker import pycharm-mmf.tar.gz pycharm-mmf:latest
    ```
    More info on the parameters of `docker import` [here](https://docs.docker.com/engine/reference/commandline/import).

4. Launch container from image: 

   * Syntax: `$ docker run --name <container_name> <image_name>:<image_tag>`
   
    For example, for the image `pycharm-mmf` and container name `wild_turin`:
    ```
    $ docker run --name wild_turin pycharm-mmf:latest 
    ```
    
    More info on the parameters of `docker run` (e.g. to mount volumes from your host system) [here](https://docs.docker.com/engine/reference/run).
    
    **If you run your container with `docker run` as above, you will not be able to run graphical programs (e.g. PyCharm, Matlab) inside the container.**
    For these cases you can use [dockerx](https://github.com/luiscarlosgph/dockerx) instead, e.g. to deploy the `pycharm-mmf` image:**
    ```
    $ python -m dockerx.run --name wild_turin --image pycharm-mmf --nvidia 1 --command 'sleep infinity'
    ```
    
    [dockerx](https://github.com/luiscarlosgph/dockerx) also allows you to mount volumes and set environment variables using the parameters `--volume` and `--env`. <!-- You can find more details about the parameters [here](https://github.com/luiscarlosgph/dockerx). -->
    You can use as many `--volume` and `--env` parameters as you like. 
    
    The syntax is `--volume '<source_path_in_host>:<target_path_in_container>'`. For example, `--volume '/home/jdoe/datasets:/home/docker/datasets'`. 
    
    Similarly, you can add as many environment variables as you like with `--env`. The syntax is `--env '<key>=<value>'`. For example, `--env 'PATH=/usr/local/cuda/bin:$PATH'`.

5. Get a terminal of the container:

    * Syntax: `$ docker exec -it <container_name> <terminal_path>`

     For example, for the container name `wild_turin`:
     ```
     docker exec -it wild_turin /bin/bash 
     ```
     More info on the parameters of `docker exec` [here](https://docs.docker.com/engine/reference/commandline/exec).

List of templates
-----------------

If you click on any template below, you will see a guide on how to use it.

* [python](python): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv)
* [pytorch](pytorch): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally)
* [vscode-torch](vscode): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [Visual Studio Code](https://code.visualstudio.com)
* [pycharm-torch](pycharm): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download)
* [pycharm-mmf](pycharm-mmf): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download) + [MMF](https://mmf.sh)


