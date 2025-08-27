FROM ubuntu
# ENV key=value
ENV ALPHA="alpha"
ENV BRAVO=bravo
ENV CHARLIE="Hello \ 
chalie"

#한번의 ENV 키워드에 여러 변수 선언 사능
ENV DELTA="delta" ECHO="echo"

ENTRYPOINT echo "ALPHA=${ALPHA} \
BRAVO=${BRAVO} \
CHARLIE=${CHARLIE} \
DELTA=${DELTA} \
ECHO=${ECHO}"

# docker build -t env.basic -f basic.Dockerfile .
# docker run -it env.basic