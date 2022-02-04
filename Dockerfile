FROM python:latest

RUN apt update && apt install certbot -y
RUN pip install certbot-dns-safedns

ENTRYPOINT ["certbot", "--authenticator", "dns_safedns", "--dns_safedns-credentials", "/etc/letsencrypt/safedns.ini"]
