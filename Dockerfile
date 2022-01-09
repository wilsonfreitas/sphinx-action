FROM sphinxdoc/sphinx

LABEL "maintainer"="Wilson Freitas <wilsonfreitas@gmail.com>"

RUN apt-get update
RUN apt-get install -y pandoc

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
