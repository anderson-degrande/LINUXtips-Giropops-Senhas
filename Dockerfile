FROM alpine:3.13
COPY ./giropops-senhas /giropops-senhas
RUN apk add --no-cache py3-pip && pip install --no-cache-dir -r /giropops-senhas/requirements.txt
WORKDIR /giropops-senhas
ENV REDIS_HOST=172.17.0.2
RUN rm -rf /root/.cache /root/.cargo /usr/local/include /usr/local/share
CMD flask run --host=0.0.0.0
