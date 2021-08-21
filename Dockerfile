FROM python:3.8-slim-buster

RUN pip install fastapi uvicorn

EXPOSE 3000

COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "3000"]