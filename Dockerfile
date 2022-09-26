FROM python:3.8.0-slim
WORKDIR /app
ADD . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload




# FROM python:3.8-alpine
# COPY ./requirements.txt /app/requirements.txt
# WORKDIR /app
# RUN pip install -r requirements.txt
# COPY . /app
# ENTRYPOINT [ "python" ]
# CMD [ "app.py" ]

