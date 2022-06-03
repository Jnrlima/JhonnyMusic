FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt install wget
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN npm install pm2@latest -g
RUN apt install build-essential
RUN apt install -y nodejs

COPY . /app

#set a default command

CMD python3 -m main.py
