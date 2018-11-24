
###
#  Docker image for CPI using the DS base image.
#  Created by Camila A. González W. <camilaandrea.gonzalezwilliamson@pmi.com>
###


# Pick the base image
FROM docker.ocean.pmicloud.biz/eadlab/docker-ocean-base-image/python:latest

# Add the requirements to a layer
COPY docker/requirements.txt /home/requirements.txt

WORKDIR /home

# Install Python Packages
RUN source /home/ds-py3/bin/activate \
	&& pip install --upgrade pip \
        && pip install -r requirements.txt \
        && git config --global http.proxy http://squid.service.pmicicd.ocean:3128 \
        && jupyter contrib nbextension install --user \
	&& rm -rf ~/.cache/pip


EXPOSE 8080

# Initialize
CMD /usr/bin/bash
