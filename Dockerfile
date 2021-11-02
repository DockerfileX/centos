ARG VERSION

# 基础镜像
FROM centos:${VERSION}

# 如果这里不重复定义参数，后面会取不到参数的值
ARG VERSION

# 作者及邮箱
# 镜像的作者和邮箱
LABEL maintainer="nnzbz@163.com"
# 镜像的版本
LABEL version=${VERSION}
# 镜像的描述
LABEL description="CentOS${VERSION}"

# 时区修改为上海
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 设置utf-8，统一编码格式
ENV LC_ALL en_US.UTF-8

RUN yum update -y