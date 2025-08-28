FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "uvicorn","main:app","--host","0.0.0.0","--port","8000" ]

# docker build -t fastapi .
# docker run -d --rm --name fastapi -p 80:8000 -v D:\docker\12_NETWORK\app:/app fastapi
# docker logs --tail 20 -f fastapi