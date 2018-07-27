# vim:set ft=dockerfile:
FROM slothai/numpy:1.14.3

# Metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/terminal1/docker-ml" \
    org.label-schema.vendor="Terminal 1 <3it@terminal1.co>" \
    org.label-schema.schema-version="1.0"

RUN apk add --no-cache \
    cmake \
    freetype-dev \
    g++ \
    gcc \
    libexecinfo-dev \
    libpng-dev \
    make \
    musl-dev \
    py-virtualenv

RUN pip install --upgrade \
    pip \
    jupyter==1.0.0 \
    scipy==1.0.1 \
    pandas==0.23.3 \
    scikit-learn==0.19.2 \
    xgboost==0.72.1 \
    lightgbm==2.1.2 \
    matplotlib==2.2.2
