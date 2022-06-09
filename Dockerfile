FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN pip3 install -y nodejs
RUN pip3 install build-essential
RUN npm install pm2@latest -g

COPY . /app

#set a default command

CMD python3 -m main.py
