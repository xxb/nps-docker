前提条件：

    1、假设你使用域名youdomain.com,首先做nps.youdomain.com -->A记录到指向你的VPS IP
    2、做泛解析*.nps.youdomain.com -->cname 到nps.youdomain.com
    3、VPS上一键运行docker环境 curl -sSL https://get.docker.com/ | sh 

一键部署nps-docker：

    docker run -d --name nps --net=host \
        -e HTTP_PROXY_PORT=80 \
        -e HTTPS_PROXY_PORT=443 \
        -e BRIDGE_PORT=8024 \
        -e DOMAIN=nps.youdomain.com -e PUBLIC_VKEY=12345678 -e WEB_PASSWORD=password lihaixin/nps
        
     
    通过变量直接修改域名，公共密钥KEY，网页管理密码，http、https域名解析端口和客户端链接服务器的端口
    
 
### 服务器
    
    管理地址：https://admin.nps.youdomain.com  
    客户端下载地址：http://file.nps.youdomain.com
    
    
### 客户端连接
- 点击web管理中客户端前的+号，复制启动命令
- 执行启动命令，linux直接执行即可，windows将./npc换成npc.exe用cmd执行

如果需要注册到系统服务可查看[注册到系统服务](https://ehang-io.github.io/nps/#/use?id=注册到系统服务)

### 配置
- 客户端连接后，在web中配置对应穿透服务即可
- 更多高级用法见[完整文档](https://ehang-io.github.io/nps/)
