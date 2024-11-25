FROM alpine:3.7

WORKDIR /app/ui
COPY . /app

RUN apk add --update --no-cache gcc musl-dev python3 python3-dev \
    && pip3 install --upgrade pip \
    && pip3 install -r /app/requirements.txt

CMD ["gunicorn", "ui:app", "-b", "0.0.0.0"]
