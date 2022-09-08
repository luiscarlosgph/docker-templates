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

4. Launch container from image: 

   * Syntax: `$ docker run --name <container_name> <image_name>:<image_tag>`
   
    For example, for the image `pycharm-mmf` and container name `wild_turin`:
    ```
    $ docker run --name wild_turin pycharm-mmf:latest 
    ```
    
    If you plan to run graphical programs inside your container (e.g. PyCharm, Matlab), you can use the [dockerx](https://github.com/luiscarlosgph/dockerx) package, and run your container with:
    ```
    $ python -m dockerx.run --image pycharm-mmf --nvidia 1 --command 'sleep infinity'
    ```

5. Get a terminal of the container:

    * Syntax: `$ docker exec -it <container_name> <terminal_path>`

     For example, for the container name `wild_turin`:
     ```
     docker exec -it wild_turin /bin/bash 
     ```

List of templates
-----------------

If you click on any template below, you will see a guide on how to use it.

* [pycharm-mmf](pycharm-mmf): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download) + [MMF](https://mmf.sh) inside the container.
