FROM ubuntu
COPY foo /usr/local/bin
COPY bar /usr/local/bin
RUN ln -sf foo /usr/local/bin/baz
CMD /usr/local/bin/baz