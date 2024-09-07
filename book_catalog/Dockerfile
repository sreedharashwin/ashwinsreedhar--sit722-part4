FROM --platform=linux/amd64 python:3.10-slim

FROM python:3.8

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY /app .

EXPOSE 8000

ENV DATABASE_URL=postgresql://library_9eon_user:n7oNCRTauRQABgKkMoyeeAI9S2XgxDop@dpg-cr9dv9bv2p9s73b641j0-a.oregon-postgres.render.com/library_9eon

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--app-dir", "/app"]
