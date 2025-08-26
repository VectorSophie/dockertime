FROM ubuntu AS parent 
ENV ALPHA="alpha"

FROM parent
ENV ALPHA="is ${ALPHA}"
ENV BRAVO = "bravo"
ENTRYPOINT echo "${ALPHA},${BRAVO}"
