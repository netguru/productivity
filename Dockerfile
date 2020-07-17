FROM cimg/python:3.8

COPY requirements.txt  .
RUN pip install -r requirements.txt

WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

ENTRYPOINT ["mkdocs"]

# Start MkDocs server on port 8000
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
