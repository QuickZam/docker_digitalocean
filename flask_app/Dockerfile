FROM python:3.8-slim

# layer caching for faster builds
COPY requirements.txt /
RUN pip install -r /requirements.txt

#COPY app.py /app.py
ADD . /flask_app
WORKDIR /flask_app

ENV FLASK_ENV=development
EXPOSE 5000
# CMD flask run --host=0.0.0.0
CMD gunicorn --workers 2 \
 --bind 0.0.0.0:5000 \
 --log-level DEBUG \
 flask:app
