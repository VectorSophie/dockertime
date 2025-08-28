# volume 통해 DB 컨테이너가 삭제되어도 데이터가 살아있을수 있도록 하자
# window 환경이기 때문에 bind mount 방식을 활용할 예정

# 1. mariadb container 생성
docker run -d --rm --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1111 -v D:\docker\10_VOL\mydb:/var/lib/mysql mariadb

# 2. 컨테이너 실행 여부, 폴더생성 여부
docker ps
ls

# 3. DB작업후(db.sql 참조) 컨테이너를 껐다가(지우고) 켜보자
docker stop mariadb

docker run -d --rm --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1111 -v D:\docker\10_VOL\mydb:/var/lib/mysql mariadb