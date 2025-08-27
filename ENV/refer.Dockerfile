FROM ubuntu
ENV ALPHA=alpha

# RUN   : 이미지 빌드시 실행
# CMD,ENTRYPOINT : 컨테이너 실행시 실행

# ALPHA_BRAVO is <- $ALPHA_BRAVO 라는 변수를 찾는다.
RUN echo "ALPHA_BRAVO is $ALPHA_BRAVO" >> /result.txt

# ALPHA_BRAVO is alpha_BRAVO <- $ALPHA 변수 뒤에 문자열 _BRAVO 뒤에 붙는형태
RUN echo "ALPHA_BRAVO is ${ALPHA}_BRAVO" >> /result.txt

# -DefaultAlpha1Value : ALPHA 값이 없으면 DefaultAlpha1Value 대입
RUN echo "ALPHA with default is ${ALPHA:-DefaultAlpha1Value}" >> /result.txt
# +DefaultAlpha1Value : ALPHA 값이 있으면 DefaultAlpha2Value 대입, 없다면 공백
RUN echo "ALPHA with default is ${ALPHA:+DefaultAlpha2Value}" >> /result.txt

# - : 빼서 없으니깐 기본값
RUN echo "BRAVO with default is ${BRAVO:-DefaultBravo1Value}" >> /result.txt
# + : 뭔가가 더해졌으니깐 기본값
RUN echo "BRAVO with default is ${BRAVO:+DefaultBravo2Value}" >> /result.txt

# cat 파일 읽기전용 뷰어
# vi, vim <- linux 에서 주로 사용하는 에디터 프로그램
ENTRYPOINT cat /result.txt

# docker build -t env.refer -f refer.Dockerfile .
# docker run -it env.refer