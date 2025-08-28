# docker 의 네트워크 확인
docker network ls

#container 가 사용하는 network 확인
docker inspect mariadb

#Networks 를 보면 된다.

# Bridge - 기본
# 호스트가 라우터역활을 해서 내부적으로 사설IP 를 컨테이너에게 할당하는 방법 
# 컨테이너들 끼리 통용되는 IP로 통신하여 외부에서는 접근 불가능
# 단일 호스트에 여러 컨테이너 사용시 유용

# host
# 공인 IP와 비슷하다.
# 호스트IP == 컨테이너IP

# None
# 네트워크 사용 안함

# Overlay
# 여러호스트를 논리적으로 하나로 연결
# 여러 도커의 호스트들이 하나의 거대한 호스트로 인식하게 됨
# 컨테이너가 어느 호스트에서 실행되든간에 서로 통신이 가능
# 분산환경의 컨테이너에 아주 유용

# MACVLAN, IPVLAN
# 컨테이너에 물리적장치처럼 고유 IP 할당
# MACVLAN : 각 컨테이너가 고유의 MAC 을 가지게 되어 물리적인 컴퓨터처럼 인식
# IPVLAN : 여러컨테이너가 MAC 주소는 공유, 하지만 각자의 고유한 IP 주소를 갖는다.