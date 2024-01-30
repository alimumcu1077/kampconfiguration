#!/bin/bash

BASE_CONF_DIR=/opt/kamp

cd /tmp && rm -rf kampconfiguration

cd /tmp && git clone  https://github.com/alimumcu1077/kampconfiguration.git \
&& cd /tmp/kampconfiguration  && git checkout main

mkdir -p ${BASE_CONF_DIR} || echo "Base Configuration dizini olusturalamadi"


rsync -aP  /tmp/kampconfiguration/ --exclude=".git" ${BASE_CONF_DIR}