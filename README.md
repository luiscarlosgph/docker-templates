Description
-----------

Dockerfile respository for different tasks.


Prerequisites
-------------

* Follow [this](https://github.com/luiscarlosgph/how-to/tree/main/docker) guide to install Docker.

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

3. Build image, e.g. for `pycharm-mmf`: 
   ```
   $ docker import pycharm-mmf.tar.gz
   ```

4. Launch container: `$ `

5. Get a terminal of the container: `$ `

List of templates
-----------------

* [pycharm-mmf](pycharm-mmf): Development environment with [CUDA](https://developer.nvidia.com/cuda-toolkit) + [pyenv](https://github.com/pyenv/pyenv) + [PyTorch](https://pytorch.org/get-started/locally) + [PyCharm](https://www.jetbrains.com/pycharm/download) + [MMF](https://mmf.sh) inside the container.
