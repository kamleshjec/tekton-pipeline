FROM quay.io/openshiftlabs/workshop-dashboard:3.7.1

USER root

COPY . \tmp\src

RUN rm -rf /tmp/src/.git* && \
    chown -R 1001 /tmp/src && \
    chgrp -R 0 /tmp/src && \
    chmod -R g+w /tmp/src

ENV TERMINAL_TAB=split

USER 1001

RUN /usr/libexec/s2i/assemble

    © 2020 GitHub, Inc.
    Terms
    Privacy
    Security
    Sta