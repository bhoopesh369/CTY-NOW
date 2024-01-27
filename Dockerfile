FROM python:3.11

ENV PYTHONUNBUFFERED=1

ARG BUILD_ENVIRONMENT=dev

WORKDIR /pragyan_hack

COPY requirements-common.txt requirements-common.txt
COPY requirements-${BUILD_ENVIRONMENT}.txt requirements-${BUILD_ENVIRONMENT}.txt
RUN pip install --no-cache-dir --upgrade -r /pragyan_hack/requirements-${BUILD_ENVIRONMENT}.txt

EXPOSE 8080

COPY . .
CMD ["python", "run.py"]