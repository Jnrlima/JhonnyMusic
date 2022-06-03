FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt install wget
RUN apt install -y nodejs

COPY . /app

#set a default command

CMD python3 -m main.py
