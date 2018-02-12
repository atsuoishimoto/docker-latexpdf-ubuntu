FROM ubuntu:xenial
# use autobuild 
RUN apt-get -y update && \
    apt install -y --no-install-recommends texlive-latex-base latexmk texlive-lang-japanese texlive-formats-extra texlive-fonts-recommended python3-pip python3-wheel python3-setuptools make && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --no-cache-dir sphinx 
CMD ["/bin/bash"]
