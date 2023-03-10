FROM fukamachi/sbcl

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-libmysqlclient-dev libpq-dev
RUN sbcl --eval '(ql-dist:install-dist "http://dist.ultralisp.org/" :prompt nil)' --quit
RUN sbcl --eval "(ql:quickload 'slynk)" --eval "(ql:quickload :serapeum)" --quit
COPY run-server.lisp /

EXPOSE 4023

ENTRYPOINT ["sbcl", "--load", "run-server.lisp"]
