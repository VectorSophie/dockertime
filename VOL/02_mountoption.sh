# -v
docker run -it --rm --name vol -v my-volume:/my-volume ubuntu

# --mount
# type= bind,volume,tmpfs
# 항목이 명시적이고 다양한 옵션을 줄수 있어 공식홈에서는 추천한다.
# 옵션 : readonly, consistency, volume-nocopy
docker run -it --rm --name vol --mount type=volume,src=my-volume,dst=/my-volume ubuntu
ls # my-volume 이 생성되어 있다.
cat hello.txt # 컨테이너가 지워져도 볼륨은 남아있기에 파일은 당연히 남게 된다.

#readonly 옵션
docker run -it --rm --name vol --mount type=volume,src=my-volume,dst=/my-volume,readonly ubuntu

echo "hi mount" >> hello.txt
# bash: hello.txt: Read-only file system