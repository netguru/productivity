FROM python:3-alpine

RUN pip install --upgrade pip \
  && pip install mkdocs mkdocs-material

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
