一键部署nps-docker



    docker run -d --name nps --net=host -e DOMAIN=nps.youdomain.com -v :/conf lihaixin/nps-docker:0.25.3
