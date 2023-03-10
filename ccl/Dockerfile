FROM fukamachi/ccl

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-libmysqlclient-dev
RUN ccl --eval '(ql-dist:install-dist "http://dist.ultralisp.org/" :prompt nil)'
RUN ccl --eval "(ql:quickload 'slynk)" --eval "(ql:quickload :serapeum)"
COPY run-server.lisp /

EXPOSE 4023

ENTRYPOINT ["ccl", "--load", "run-server.lisp"]
