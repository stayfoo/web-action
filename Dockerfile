# 定制镜像都是基于 FROM 的镜像
FROM centos
# FROM golang:alpine

# 注意： RUN 每执行一次，都会创建一层镜像，会导致镜像太大，可以使用  && 连接多个命令。eg:
# RUN yum -y install wget \
#     && wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz" \
#     && tar -xvf redis.tar.gz

# 镜像设置环境变量
# ENV GO111MODULE=on \
#     CGO_ENABLED=0 \
#     GOOS=linux \
#     GOARCH=amd64 \
#     GOPROXY="https://goproxy.cn,direct"

# 工作目录，代码根目录，项目代码放到 Linux 上的目录
# WORKDIR /root/web-action/web-action

# 将代码复制到容器中
# COPY . .

# 编译代码为二进制
# RUN go build -o app .

# 编译后的二进制移动到 /dist 目录
# WORKDIR /dist

# RUN cp /root/web-action/web-action/app .
# 在容器目录 /dist 创建一个目录为 src
# RUN mkdir src .

# 暴露端口
EXPOSE 8089

# 启动容器时运行的命令
# CMD ["/root/web-action/web-action"]

# 运行 golang 程序的命令
ENTRYPOINT ["/root/web-action/web-action"]

