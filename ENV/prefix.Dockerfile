FROM ubuntu
# HOME 은 OS 에 등록된 환경변수 
# RUN echo "HOME origin is ${HOME}" >> /result.txt

#헷갈리지 않데 환경변수 등록
ENV MY_HOME = D:/docker
RUN echo "HOME origin is ${MY_HOME}" >> /result.txt

ENTRYPOINT cat /result.txt

# docker build -t env.prefix -f prefix.Dockerfile .
# docker run -it env.prefix