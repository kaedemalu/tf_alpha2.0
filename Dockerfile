FROM alpine:3.7

RUN apk --update-cache \
    add linux-headers \
    gcc \
    g++ \
    make \
    openblas-dev \
    python \
    python-dev \
    python3 \
    python3-dev

RUN mkdir /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip install Pillow \
    # h5py \
    ipykernel \
    jupyter \
    keras_applications \
    keras_preprocessing \
    # matplotlib \
    numpy \
    # pandas \
    scipy \
    sklearn

RUN python -m ipykernel.kernelspec

RUN pip --no-cache-dir install \
    tensorflow==2.0.0-alpha0
