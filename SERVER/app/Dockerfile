# 1. python 이미지를 받는다.
FROM python:3.11-slim

# 2.컨테이너에 작업 디렉토리를 생성
WORKDIR /app

# 3. local에 있는 모든 파일을 /app 으로 복사
COPY . /app

#4. pip 최신화
RUN pip install --upgrade pip

#5. requirement.txt 에 명시된 라이브러리 설치
RUN pip install --no-cache-dir -r requirement.txt

#6. open port 명시
EXPOSE 8000

#7. 서버 실행
CMD uvicorn main:app --host=0.0.0.0 --port=8000