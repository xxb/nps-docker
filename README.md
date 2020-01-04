一键部署nps-docker


    git clone https://github.com/cnlh/nps.git
    docker run -d --name nps --net=host -v /root/nps/conf/:/conf lihaixin/nps-docker:0.25.3
