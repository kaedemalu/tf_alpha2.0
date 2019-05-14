FROM python:3.7

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

RUN pip --no-cache-dir install \
  tensorflow==2.0.0-alpha0
