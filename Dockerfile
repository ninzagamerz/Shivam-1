FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Shivam
WORKDIR /Shivam
COPY start.sh /start.sh
EXPOSE 5001 80 8888 8080 443 5130 5131 5132 5133 5134 5135 3306
CMD ["/bin/bash", "/start.sh"]
