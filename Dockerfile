FROM python:3.7-alpine
WORKDIR /flask-demo
RUN apk add --no-cache gcc musl-dev linux-headers libffi-dev
RUN pip install "poetry"
COPY poetry.lock pyproject.toml .
RUN POETRY_VIRTUALENVS_CREATE=false poetry install
COPY hello/hello.py .
ENV FLASK_APP=hello
CMD ["flask", "run", "--host=0.0.0.0"]
