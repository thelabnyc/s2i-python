FROM centos/python-34-centos7

USER root

RUN INSTALL_PKGS="xz libffi libjpeg-turbo libjpeg-turbo-devel rh-python34-python-psycopg2 rh-python34-python-simplejson" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

RUN /bin/bash -c "pip install Pillow==3.1.1 hiredis==0.2.0"

RUN wget https://nodejs.org/dist/v5.7.0/node-v5.7.0-linux-x64.tar.xz && \
    unxz node-v* && \
    tar --strip-components 1 -xvf node-v* -C /usr/local && \
    rm node-v*

USER 1001
