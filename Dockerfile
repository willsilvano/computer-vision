FROM python:3.7

RUN apt-get update && apt-get install -y \
    cmake \
    pulseaudio \
    libsdl1.2-dev \
    libsdl-image1.2-dev \
    libsdl-mixer1.2-dev \
    libsdl-ttf2.0-dev

RUN python -m pip install --upgrade pip

ADD requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

ADD ./notebooks /opt/notebooks

EXPOSE 8888    