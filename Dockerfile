FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN pip3 install wget
RUN pip3 install nodejs

COPY . /app

#set a default command

CMD python3 -m main.py
