FROM openshift/python-34-centos7

USER root

RUN INSTALL_PKGS="libffi libjpeg-turbo libjpeg-turbo-devel" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

USER 1001
