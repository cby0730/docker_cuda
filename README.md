# docker_cuda

This repository contains a Dockerfile for creating a Docker image based on `nvidia/cuda 11.8 and 12.1`. The image includes additional installations of `pyenv`, `pipenv`, and other packages. It provide the flexibility to switch between different CUDA versions.

---

## Main Features

- Easy switching between different CUDA versions
- Supports machine learning and deep learning tasks

## Usage

### Docker Pull :

Command line:
- For cuda 12.1 : 
```bash
docker pull bychen0730/cuda_12.1
```

- For cuda 11.8 : 
```bash
docker pull bychen0730/cuda_11.8
```

### Build container:

Once the Docker image is built, to enable Docker to access GPU resources, run the following command line:

```bash
docker run -it --name $CONTAINER_NAME --gpus all $IMAGE_NAME。
```
