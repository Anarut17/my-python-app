FROM python:3.10
WORKDIR /app

# Создаем нового пользователя
RUN useradd -m myuser
USER myuser

COPY requirements.txt .
RUN pip install --user -r requirements.txt

COPY . .
CMD ["python", "app/main.py"]
