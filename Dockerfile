FROM sphinxdoc/sphinx

LABEL "maintainer"="Wilson Freitas <wilsonfreitas@gmail.com>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
