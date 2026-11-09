
FROM python:3.12-slim

WORKDIR /app

COPY toing_assistant_claude_upload.zip /tmp/project.zip

RUN python -c "import zipfile; zipfile.ZipFile('/tmp/project.zip').extractall('/app')" \
    && pip install --no-cache-dir -r /app/requirements.txt \
    && mkdir -p /app/data

ENV DB_PATH=/app/data/orders.db

EXPOSE 8080

CMD ["sh", "-c", "uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8080}"]
