FROM ubuntu

# 이미지 빌드시에만 사용할 환경변수
ARG ALPHA_ARG
# 이 받은 내용을 참조
ENV ALPHA=${ALPHA_ARG}
ENTRYPOINT echo "ALPHA is ${ALPHA}"

# docker build -t env.buildtime --build-arg ALPHA_ARG=Alice -f buildtime.Dockerfile .
# docker run -it env.buildtime