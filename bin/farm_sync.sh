#!/bin/bash

BASE_CONF_DIR=/opt/kamp

cd /tmp && git clone  https://github.com/alimumcu1077/kampconfiguration.git \
&& cd /tmp/kampconfiguration  && git checkout main

mkdir -p ${BASE_CONF_DIR} || echo "Base Configuration dizini olusturalamadi"; exit 1
rsync -aP  /tmp/kampconfiguration/ --exclude=".git" ${BASE_CONF_DIR} 