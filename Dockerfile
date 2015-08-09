# Builds a docker gui image
FROM hurricane/dockergui:x11rdp1.2

MAINTAINER aptalca

#########################################
##        ENVIRONMENTAL CONFIG         ##
#########################################

# Set environment variables

# User/Group Id gui app will be executed as default are 99 and 100
ENV USER_ID=99
ENV GROUP_ID=100

# Gui App Name default is "GUI_APPLICATION"
ENV APP_NAME="JDownloader2"

# Default resolution, change if you like
ENV WIDTH=1280
ENV HEIGHT=720

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

RUN \
#########################################
##    REPOSITORIES AND DEPENDENCIES    ##
#########################################
echo 'deb http://archive.ubuntu.com/ubuntu trusty main universe restricted' > /etc/apt/sources.list && \
echo 'deb http://archive.ubuntu.com/ubuntu trusty-updates main universe restricted' >> /etc/apt/sources.list && \
mkdir -p /etc/my_init.d && \

# Install packages needed for app
export DEBCONF_NONINTERACTIVE_SEEN=true DEBIAN_FRONTEND=noninteractive && \
apt-get update


#########################################
##          GUI APP INSTALL            ##
#########################################

# Install steps for X app


# Copy X app start script to right location
COPY startapp.sh /startapp.sh
COPY firstrun.sh /etc/my_init.d/firstrun.sh
COPY /src/jd2.tar /nobody/jd2.tar
RUN chmod +x /etc/my_init.d/firstrun.sh 



#########################################
##         EXPORTS AND VOLUMES         ##
#########################################

# Place whater volumes and ports you want exposed here:
VOLUME ["/config"]
EXPOSE 3389 8080
