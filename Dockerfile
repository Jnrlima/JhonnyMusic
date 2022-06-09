FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN pip3 install wget
RUN pip3 install nodejs
RUN pip3 install wget
RUN pip3 install nodejs
RUN apt install git curl python3-pip ffmpeg -y
RUN apt install -U pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN apt install -y nodejs
RUN apt install build-essential
RUN npm install pm2@latest -g

COPY . /app

#set a default command

CMD python3 -m main.py
