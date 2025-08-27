FROM ubuntu
ENV ALPHA="alpha"
ENTRYPOINT echo "ALPHA is ${ALPHA}, BRAVO is ${BRAVO}"

# docker build -t env.envfile -f envfile.Dockerfile .
# docker run -it env.envfile
# -e 옵션을 이용해서 환경변수 전달
# docker run -it -e BRAVO=bravo  env.envfile
# .env 파일 참조
# docker run -it --env-file <참조할 env 파일> env.envfile
# docker run -it --env-file .env env.envfile