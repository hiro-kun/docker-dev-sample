FROM python:3.5-alpine

RUN pip install pipenv

COPY run.sh /tmp/run.sh

EXPOSE 5000
CMD ["sh", "/tmp/run.sh"]