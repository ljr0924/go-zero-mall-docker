# go-zero-mall-docker
go-zero项目实战

## 环境准备

1. docker
   1. 可直接下载安装[`docker-desktop`](https://www.docker.com/products/docker-desktop/)
   
2. docker-compose


## 部署

1. 打包并启动docker
```shell
cd ./go-zero-mall-docker
docker-compose up -d
```

2. 观察日志，并耐心等待部署完毕即可
```shell
// 进入golang容器
docker exec -it {golang容器ID} /bin/sh

// 切换至日志目录
cd /tmp/logs

// 观察日志，输出 Starting server at 0.0.0.0:8000... 即为启动完成
tail -f userapi.log
```

3. 测试接口
```shell
// 注册用户
curl --location --request POST 'http://localhost:8000/api/user/register' \
--header 'Content-Type: application/json' \
--data-raw '{"name":"测试用户","gender":1,"mobile":"18177062277","password":"123456"}'

// 登录用户
curl --location --request POST 'http://localhost:8000/api/user/login' \
--header 'Content-Type: application/json' \
--data-raw '{"mobile":"18177062277","password":"123456"}'
```