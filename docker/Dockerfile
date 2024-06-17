FROM python:3.12
RUN apt update && apt install git -y && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt requirements.txt
RUN pip install --user -r requirements.txt --no-cache-dir
ENV PATH=$PATH:/root/.local/bin

RUN mkdir -p /docs
WORKDIR /docs

EXPOSE 8080
COPY ./entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/tmp/entrypoint.sh"]