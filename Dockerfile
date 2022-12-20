FROM python:3.7.15-slim-buster

ARG DEBIAN_FRONTEND="noninteractive"
ARG RELEASE
ENV RELEASE=${RELEASE}

RUN apt update \
    && apt install -y --no-install-recommends wget \
    && rm -rf /var/lib/apt/lists/* \
    && wget -O "${RELEASE}.tar.gz" "https://www.pythonpowerelectronics.com/releases/${RELEASE}.tar.gz" \
    && tar xf ${RELEASE}.tar.gz \
    && cd ${RELEASE} \
    && pip install -r requirements.txt gunicorn==20.1.0\
    && cd simulator_interface && python manage.py makemigrations simulations && python manage.py migrate\
    && rm -f ${RELEASE}.tar.gz \
    && mkdir -p /ppe && chown 1000:1000 /ppe -R

USER 1000:1000

WORKDIR /ppe

COPY --chown=1000:1000 entrypoint.sh .

EXPOSE 80
VOLUME [ "/ppe/data" ]

CMD [ "sh", "/ppe/entrypoint.sh" ] 
