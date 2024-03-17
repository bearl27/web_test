FROM python:3.9.11

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /root/workspace
COPY requirements.txt /root/workspace/
WORKDIR /root/workspace

RUN pip3 install --upgrade pip\
    && pip3 install --upgrade setuptools\
    && pip3 install -r requirements.txt
