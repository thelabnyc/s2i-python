FROM centos/python-34-centos7

USER root

RUN INSTALL_PKGS="xz libffi libjpeg-turbo libjpeg-turbo-devel" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

RUN wget https://nodejs.org/dist/v4.3.1/node-v4.3.1-linux-x64.tar.xz && \
    unxz node-v4.3.1-linux-x64.tar.xz && \
    tar --strip-components 1 -xvf node-v* -C /usr/local && \
    rm node-v*

USER 1001
