# Dockerfile 이 하나만 있다면 굳이 이름을 지을 필요가 없다.
# 웹서버(nginx, node.js, apache) 
# 웹의 기본 포트 : 80 <- 생략이 가능하다.
# naver.com -> naver.com:80
FROM nginx

#포트개방 명세
EXPOSE 80
#port & protocol
EXPOSE 8080/tcp
EXPOSE 8080/udp
EXPOSE 8081 8082/tcp 8083/udp

# Dockerfile 이 하나인 경우 -f 옵션을 쓰지 않아도 된다.
# docker build -t expose.basic .
# docker run -it expose.basic

# docker ps <- 개방할 수 있는 port 를 볼 수 있다.

# 특정 컨테이너에 상세 정보
# docker container inspect <container name|id>
# "80/tcp": null?

# curl 은 특정 사이트를 연결하는 프로그램
# curl http://localhost:80 실행시 연결이 불가능 하다.

# 명세는 했지만 실제 개방하지 않아서 그렇다.
# docker run -it -P expose.basic
# docker container inspect <container name|id>
# "80/tcp": [{"HostIp": "0.0.0.0","HostPort": "32768"}]
# 32768 포트로 요청하면 내가 80포트랑 연결시켜 줄께
# -P 는 요청 포트를 임의로 매핑한다.
# curl http://localhost:32768
# docker ps -a 로 컨테이너 아이디 확인
# docker container rm -f d889a14772d3

# -p 는 요청포트와 연결포트를 직접 지정
# docker run -it --rm -p 8080:80 expose.basic
# docker container inspect <container name|id>
# curl http://localhost:8080
# docker stop <docker id>
# docker ps -a
# --rm 옵션에 의해서 꺼진 컨테이너가 자동 삭제
# port 프로그램마다 지정된 포트
# webserver : http:80, https:443
# database : mariadb:3306, oracle:1521, mongodb:27013
# tomcat : 8080
# elasticsearch : 9200

# 80, 8081, 8082, 8083/udp
# docker run -it --rm --name expose.con \
#  -p 8080:80 -p 8081:8081 -p 8082:8082 -p 8083:8083/udp expose.basic
# docker stop expose.con
# docker ps -a