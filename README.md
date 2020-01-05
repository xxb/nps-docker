前提条件：

    1、假设你使用域名youdomain.com,首先做nps.youdomain.com -->A记录到指向你的VPS IP
    2、做泛解析*.nps.youdomain.com -->cname 到nps.youdomain.com
    3、VPS上一键运行docker环境 curl -sSL https://get.docker.com/ | sh 

一键部署nps-docker：

    docker run -d --name nps --net=host -e DOMAIN=nps.youdomain.com lihaixin/nps-docker:0.25.3
