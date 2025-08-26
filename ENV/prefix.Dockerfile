FROM ubuntu 
RUN echo "HOME origin is ${HOME}" >> /result.txt
ENTRYPOINT cat /result.txt