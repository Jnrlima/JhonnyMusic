FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \

COPY . /app

#set a default command

CMD python3 -m main.py
