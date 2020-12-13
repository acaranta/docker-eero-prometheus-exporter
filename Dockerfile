FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git python3-pip jq
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/brmurphy/eero-exporter.git /app
RUN pip3 install -r requirements.txt
RUN pip3 install yq 
ADD startapp.sh /app

WORKDIR /data

CMD ["/app/startapp.sh"]

