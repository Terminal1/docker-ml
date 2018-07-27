# Machine Learning environment in a box
Machine learning models often require computational libraries for matrix manipulation, optimization or low-level algorithms. Those libraries might require certain system packages (gcc, llvm, openblas, cmake, etc.) and take time to compile. This alpine-based container has a common development environment with a popular python libraries pre-installed.

### Quickstart
1. Run a container in a detached mode and share current folder with `/home` from inside the container:
    ```cmd
    host> docker run -it --volume $(pwd):/home --detach --name=ml terminal1/ml
    ```
2. SSH to the container and install anything required. For example, to install [tqdm](https://github.com/tqdm/tqdm), use the following command:
    ```cmd
    host> docker exec -it ml sh
    
    container> pip install tqdm
    ```

### Philosophy
* Keep essential individual packages in other reusable containers. This container is unlikely to be a base for anything else.
* Install anything you like to detached container. If installation takes time, use [virtualenv](https://docs.python.org/3/library/venv.html) in a shared volume.
