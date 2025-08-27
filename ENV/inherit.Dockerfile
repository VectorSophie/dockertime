FROM ubuntu AS parent
ENV ALPHA="alpaha"

# 상속
FROM parent

# 재정의(override) - 부모로 받은 상속받은 무언가가 마음에 들지 않아 변경
ENV ALPHA="${ALPHA} -> 알파"

ENV BRAVO = "bravo"
ENTRYPOINT echo "alpha=${ALPHA}, BRAVO=${BRAVO}"

# docker build -t env.inherit -f inherit.Dockerfile .
# docker run -it env.inherit