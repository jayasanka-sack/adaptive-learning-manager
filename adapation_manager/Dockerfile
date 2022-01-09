FROM python:3.8-slim

#RUN apt update && \
#apt install --no-install-recommends -y build-essential gcc curl      ca-certificates python3 && \
#apt clean && rm -rf /var/lib/apt/lists/* \

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD ["main.py"]
