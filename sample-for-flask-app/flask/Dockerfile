FROM python:3.5-alpine

RUN apk --update add --no-cache openssh bash \
    && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && echo "root:root" | chpasswd

RUN sed -ie 's/#Port 22/Port 22/g' /etc/ssh/sshd_config

RUN pip install pipenv

COPY run.sh /tmp/run.sh

EXPOSE 5000
EXPOSE 22
CMD ["sh", "/tmp/run.sh"]