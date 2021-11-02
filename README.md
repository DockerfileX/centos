# CentOS

## 1. 简要说明

基于CentOS7系统，配置了常用特性

## 2. 特性

1. CentOS 7.x
2. en_US.UTF-8
3. TZ=Asia/Shanghai

## 3. 编译

```sh
docker build -t nnzbz/centos:7 --build-arg VERSION=7 .
# latest
docker tag nnzbz/centos:7 nnzbz/centos:latest
```

## 4. 上传镜像

```sh
docker push nnzbz/centos:7
docker push nnzbz/centos:latest
```
