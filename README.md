# About This Repository
This repository is the TensorFlow project that use with Docker.  

## Version
* Base Docker Image
  * Ubuntu 18.04
* TensorFlow Version
  * 2.0.0 alpha version

## How To Use
(use https in this description.)  
Type following command.  
```shell
$ git clone https://github.com/kaedemalu/tf_alpha2.0.git
$ cd tf_alpha2.0
$ docker build -t tensor-alpha .
$ sh ./run_tf_alpha.sh
```

## Why did I make this?
In TensorFlow Dev Summit 2019, they announced that TensorFlow 2.0 Alpha version is released.  
So I want to get this version as simple as possible.  

## Reference
[Official Dockerfile](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile)
