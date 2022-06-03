FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt install wget
RUN pip3 install -U pip
RUN npm install pm2@latest -g
RUN apt install build-essential
RUN apt install -y nodejs

COPY . /app

#set a default command

CMD python3 -m main.py
