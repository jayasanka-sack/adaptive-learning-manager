FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3
RUN apt install -y python3-pip

#RUN apt update && \
#apt install --no-install-recommends -y build-essential gcc curl      ca-certificates python3 && \
#apt clean && rm -rf /var/lib/apt/lists/* \

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD ["main.py"]
