FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["uvicorn", "safety_api_server:app", "--host", "0.0.0.0", "--port", 
"8080"]
