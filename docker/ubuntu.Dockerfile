FROM ubuntu:18.04

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    libfreetype6-dev \
    libhdf5-serial-dev \
    libpng-dev \
    libzmq3-dev \
    pkg-config \
    python \
    python-dev \
    rsync \
    software-properties-common \
    unzip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip --no-cache-dir install \
    Pillow \
    h5py \
    ipykernel \
    jupyter \
    keras_applications \
    keras_preprocessing \
    matplotlib \
    numpy \
    pandas \
    scipy \
    sklearn \
    && \
    python -m ipykernel.kernelspec

# Install TensorFlow CPU version from central repo
RUN pip --no-cache-dir install \
    tensorflow==2.0.0-alpha0
