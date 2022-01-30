FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN apt-get update -y
RUN apt-get install -y python3
RUN apt install -y python3-pip


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD ["main.py"]
