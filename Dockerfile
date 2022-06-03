FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt install wget -y
RUN pip3 install -U pip -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN npm install pm2@latest -g -y
RUN apt install build-essential -y
RUN apt install -y nodejs -y

COPY . /app

#set a default command

CMD python3 -m main.py
