前提条件：

    1、假设你使用域名youdomain.com,首先做nps.youdomain.com -->A记录到指向你的VPS IP
    2、做泛解析*.nps.youdomain.com -->cname 到nps.youdomain.com
    3、VPS上一键运行docker环境 curl -sSL https://get.docker.com/ | sh 

一键部署nps-docker：

    docker run -d --name nps --net=host \
        -e HTTP_PROXY_PORT=80 \
        -e HTTPS_PROXY_PORT=443 \
        -e BRIDGE_PORT=8024 \
        -e DOMAIN=nps.youdomain.com -e PUBLIC_VKEY=12345678 -e WEB_PASSWORD=!password lihaixin/nps-docker:0.25.3
        
     
    通过变量直接修改域名，公共密钥KEY，网页管理密码，http、https域名解析端口和客户端链接服务器的端口
