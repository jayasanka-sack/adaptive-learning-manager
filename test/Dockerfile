FROM python:3.7.3-stretch

ARG TF_PACKAGE=tensorflow
ARG TF_PACKAGE_VERSION=2.1.1
RUN pip install --no-cache-dir ${TF_PACKAGE}${TF_PACKAGE_VERSION:+==${TF_PACKAGE_VERSION}}