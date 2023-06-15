FROM python:alpine
# ENV DB_URL=localhost
# ENV DB_NAME=tawazun
# ENV DB_USERNAME=root
# ENV DB_PASSWORD=DevOps@2022
# ENV DB_PORT=3306

RUN apk update && \
    apk add --no-cache build-base libffi-dev openssl-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./todo.py
