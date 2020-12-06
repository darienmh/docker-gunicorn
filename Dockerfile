FROM python:3.7-slim
LABEL maintainer="darienmh@gmail.com"
ADD . /
RUN pip3 install -r ./requirements.txt \
    && chmod +x ./entrypoint.sh
WORKDIR /app
EXPOSE 5000
ENTRYPOINT ["sh", "entrypoint.sh"]