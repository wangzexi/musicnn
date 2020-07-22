FROM python:3.7

RUN apt-get update && apt-get install -y libsndfile1

WORKDIR /data
COPY . .
RUN python setup.py install && rm -rf ./*

CMD ["bash"]
