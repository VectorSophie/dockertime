# 기존 볼륨은 삭제
docker volume rm -f my-volume
docker volume ls

#바인드마운트
#로컬의경로:컨테이너의경로
docker run -it --rm --name bind_mount -v D:\docker\10_VOL\my-volume:/my-volume ubuntu
#볼륨확인
ls

#다른창에서 볼륨생성여부 확인
docker volume ls # 볼륨이 생성되어 있지 않다.
#하지만 지정한 폴더는 생성되어 있다.(바인드 마운트는 파일시스템에 기반하기 때문에) 

# 컨테이너 창에서 파일 생성시 로컬에 생성되는지 확인해 보자
echo "Hello Volume" >> greeting.txt
cat greeting.txt

# 로컬
cd my-volume
cat greeting.txt

# 1. bind mount 는 volume 보다 속도나 효율성이 떨어진다.
# 파일시스템(내 PC 에 저장)을 이용하기에 갖을수 있는 장점?
# 2. 파일을 다루는데 보다 직관적이다.
# 3. 파일시스템을 기반으로하기 때문에 도커 자체에 문제가 생겨도 파일은 남는다.

# 마운트방식
docker run -it --rm --name bind_mount --mount type=bind,src=D:\docker\10_VOL\my-volume,dst=/my-volume ubuntu
cd my-volume
cat greeting.txt
echo "user --mount" >> greeting.txt
cat greeting.txt

# 로컬에서 확인
cat greeting.txt

# 마운트 방식의 주의사항
# -v 옵션의 경우 로컬경로에 지정한 폴더가 없다면 생성(버전에 따라 다를수 있다.)
# --mount 옵션은 에러가 난다.(반드시 폴더를 먼저 생성후 실행)
docker stop bind_mount
docker run -it --rm --name bind_mount --mount type=bind,src=D:\docker\10_VOL\my-volume3,dst=/my-volume ubuntu
