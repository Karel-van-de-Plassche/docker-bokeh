#FROM osixia/web-baseimage:1.0.0
FROM osixia/light-baseimage:0.2.6
MAINTAINER Karel van de Plassche <karelvandeplassche@gmail.com>

#RUN /container/tool/add-multiple-process-stack \
#  && /container/tool/add-service-available :nginx \
RUN apt-get update \
  && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends \
#    vim \
#    git \
#    build-essential \
    libyaml-dev \
#    nodejs \
#    npm \
    python3 \
    python3-pip \
    python3-numpy \
    python3-dev \
#    python3-scipy \
#    python3-pandas \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN pip install \
  'bokeh'
#  xarray

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/install-service
RUN /container/tool/install-service

# Add default env variables
ADD environment /container/environment/99-default
