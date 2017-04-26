FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Add docker-entrypoint.sh.
RUN mkdir /entry
COPY docker-entrypoint.sh /entry/docker-entrypoint.sh
RUN chown -R root /entry/docker-entrypoint.sh
RUN chmod +x /entry/docker-entrypoint.sh

ENTRYPOINT ["/entry/docker-entrypoint.sh"]
