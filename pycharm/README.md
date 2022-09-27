Description
-----------

Image that contains a PyCharm development environment with CUDA support.

How to deploy it
----------------
* **From DockerHub**: `$ docker pull luiscarlosgph/pycharm:latest`

* **From this git repo**:
  ```bash
  TODO
  ```

Run the image
-------------

1. Install **dockerx** following the instructions [here](https://github.com/luiscarlosgph/dockerx#install-using-pip). This is necessary to run the PyCharm GUI within the container without hassle. 

2. Run PyCharm container: `$ python3 -m dockerx.run --name wild_turin --image luiscarlosgph/pycharm:latest --nvidia 1 --command '/opt/pycharm/pycharm'`

Configure container's PyCharm
-----------------------------

TODO
