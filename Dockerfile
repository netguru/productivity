FROM python:3-alpine

RUN pip install --upgrade pip \
  && pip install mkdocs mkdocs-material

WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

ENTRYPOINT ["mkdocs"]

# Start MkDocs server on port 8000
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
