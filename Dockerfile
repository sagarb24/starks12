ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
FROM python:3.7-alpine
RUN md api
RUN md data
COPY app.py api/
COPY books.db data/
COPY . /web
WORKDIR /web/api
RUN pip install -r ./requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]