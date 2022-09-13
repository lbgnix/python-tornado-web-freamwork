FROM python:3.7

EXPOSE 80

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#ENTRYPOINT ["python3", "app.py"]
ENTRYPOINT export $(cat .env | xargs) && python3 app.py
