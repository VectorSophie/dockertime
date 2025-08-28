# pip install pymysql sqlalchemy
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# MariaDB 접속 정보
# container 는 기본 bridge 네트워크로 도메인이 통하지 않는다.
# ip 주소를 활용
# ipconfig -> 172.24.32.1 (host 의 사설IP 를 통해 들어감)
# docker inspect mariadb -> 172.17.0.2 (컨테이너끼리의 사설 IP 를 통해 직접 들어감)
DATABASE_URL = "mysql+pymysql://web_user:pass@172.17.0.2:3306/mydb"

# DB 엔진 생성
engine = create_engine(
    DATABASE_URL,
    echo=True,          # SQL 로그 출력
    # pool_size=10,     # 최대 커넥션 수
    # max_overflow=20,  # 초과 요청 시 임시 커넥션 수
    # pool_timeout=30,  # 커넥션 가져오기 최대 대기 시간 (초)
    # pool_recycle=1800,# 커넥션 재사용 시간 (초)
)


# 기본 값을 먼저 알아보자!
print(f"Connection Pool Size: {engine.pool.size()}") # 5
print(f"Max Overflow: {engine.pool._max_overflow}") #10
print(f"Pool Timeout: {engine.pool._timeout}") #30
print(f"Pool Recycle: {engine.pool._recycle}") #-1 은 비활성화

# 세션 생성기
SessionLocal = sessionmaker(bind=engine)

# DB 세션 의존성 주입용 함수
def get_db():
    db = SessionLocal()
    try:
        yield db # 세션 생성후 기다린다.
    finally:
        db.close() # 이후 실행이 끝나면 닫아 준다.(신경쓸 필요가 없다.)