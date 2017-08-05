#!/bin/bash

  if [ ! -d /config/jd2 ]; then
    tar -zxvf /nobody/jd2.tar.gz -C /config/
  fi
  if [ ! -d /var/cache/tomcat7 ]; then
    mkdir -p /var/cache/tomcat7
    chown tomcat7:tomcat7 /var/cache/tomcat7
  fi
  chown -R nobody:users /config
  chmod -R g+rw /config
