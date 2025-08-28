# main.py
from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy import text
from sqlalchemy.orm import Session

from database import get_db
from logger import Logger

app = FastAPI()
logger = Logger().log(__name__)
logger.info("log 준비 완료")

# 예제용: 간단한 select 쿼리 실행
@app.get("/list")
# get_db 함수를 통해 데이터베이스 세션을 의존성으로 주입받습니다.
def emp_list(db: Session = Depends(get_db)): #Dependens?
    try:
        # SQL 쿼리를 실행하고, 결과를 딕셔너리 리스트 형태로 변환하여 가져옵니다.
        # 결과를 가져올 떄는 mappings() 를 통해 가져온다.
        result = db.execute(text("SELECT * FROM employees")).mappings().fetchall()
        logger.info(f"result length:{len(result)}")
        return result
    except Exception as e:
        logger.info(f"exception:{e}")
        return {"msg":"DB 조회 실패"}

# emp_no를 이용해 특정 직원 정보 조회
@app.get("/emp/{emp_no}")
def emp_detail(emp_no: int, db: Session = Depends(get_db)):
    try:
        query = text("SELECT * FROM employees WHERE emp_no = :emp_no")# parameter 대입        
        result = db.execute(query, {"emp_no": emp_no}).mappings().fetchone()# 첫 row 만 가져온다.
        # 결과가 없는 경우 404 에러를 강제(raise)발생
        if not result:            
            raise HTTPException(status_code=404, detail="Employee not found")

        logger.info(f"조회 성공: emp_no={emp_no}")
        return result
    
    except Exception as e:
        # 예외 발생시 HTTPException 이면 그대로 발생
        if isinstance(e, HTTPException):
            raise e
        # 아니면 강제로 HTTPException  발생
        logger.error(f"exception in emp_detail: {e}")
        raise HTTPException(status_code=500, detail="Internal Server Error")