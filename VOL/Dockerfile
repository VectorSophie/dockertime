FROM ubuntu

#docker build -t vol.basic .
#docker run -it

# 1. mariadb 이미지 검색
# docker search mariadb
# 2. mariadb 최신버전 다운로드
# docker pull mariadb
# 3. 이미지 확인
# docker images

# 2. 컨테이너 실행
# -d 백그라운드로 실행하라
# --name : 컨테이너 이름 지정
# -p : 3306 요청이 있으면 컨테이너의 3306과 연결
# -e : 환경변수 MYSQL_ROOT_PASSWORD 를 1111로(root 비밀번호)
# --rm : 컨테이너 정지시 컨테이너 삭제 
# docker run -d --name mariadb --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1111 mariadb
# docker ps
