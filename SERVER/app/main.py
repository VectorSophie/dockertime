from fastapi import FastAPI

app = FastAPI()

# get(), post()
@app.get("/") # locahost:8000/이런 요청이 왔을때
def main(): # main() 함수를 실행 해라
    # 아래 내용을 반환(client(요청을 보낸 무언가) 에게)
    return {"message":"Hello, Fast API"};