FROM ubuntu
ENV ALPHA="alpha"
ENTRYPOINT echo "ALPHA=${ALPHA}";

# docker build -t env.runtime -f runtime.Dockerfile .
# docker run -it env.runtime

# -e 옵션으로 컨테이너 실행시 환경변수를 제공할 수 있다.
# docker run -it -e ALPHA=RuntimeValue env.runtime