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

FROM ubuntu
VOLUME /my_volume
CMD bash

# docker build -t vol.basic .
# docker run -it --rm --name vol vol.basic
# bash 명령어에 의해서 컨테이너 안으로 진입(루트계정)
# cd my-volume
# echo "hello world" >> hello.txt
# cat hello.txt

# 다른창에서 볼륨을 확인
# docker volume ls
# docker volume inspect 901bd8e2509894896bf5e2b8c84f11d31e095a63467e90d337d0bff776853e63
# Mountpoint 는 컨테이너의 특정 폴더와 연결되는 볼륨 폴더의 위치(리눅스)
# Window -> 하이퍼바이저 -> 도커가상화
# 윈도우에서는 이 주소를 이용해 볼륨 내용을 볼 수 없다.

# --privileged  : 컨테이너에 호스트와 같은 권한을 부여(보안상 위험)
# --pid=host : 호스트와 동일한 PID 네임스페이스(컨테이너와 호스트 프로세를 합침)
# justincormack/nsenter1 : nsenter 를 통해 다른 공간에 접근해주는 도구
# docker run -it --rm --privileged --pid=host justincormack/nsenter1

# 이후 Mountpoint 에 명시된 주소를 cd <주소> 로 넣으면 접근 가능
# 파일 내용 수정
# echo "hello container" >> hello.txt
# 컨테이너에서 이 내용이 적용적용 되었는지 확인
# 컨테이너가 있는 창에서 확인
# cat hello.txt
# 같은 내용이 발견된다면 둘이 연결되어있다는 것을 확인한 것