FROM ubuntu 
ENV ALPHA="alpha"
ENV BRAVO=bravo 
ENV CHARLIE="Hi from charlie"
ENV DELTA="delta" ECHO="echo"
ENTRYPOINT echo "${ALPHA} reporting for duty\
                 ${BRAVO} present\
                 ${CHARLIE} \
                 On track ${DELTA} \
                 ${ECHO} in position"