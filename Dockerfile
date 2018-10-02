#
# Usage:
#  docker build -t bcite .
#  docker run -ti -p 8000:8000 -v ${PWD}:/usr/src/app bcite bash
#

FROM python:3.6

RUN apt-get update && apt-get install -y openjdk-8-jdk-headless
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
