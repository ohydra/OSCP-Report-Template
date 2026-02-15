FROM ubuntu:24.04

# Install dependencies.
ARG DEBIAN_FRONTEND="noninteractive"
RUN apt-get update \
 && apt-get install -y \
      wget \
      curl \
      texlive-latex-recommended \
      texlive-fonts-extra \
      texlive-latex-extra \      
      p7zip-full \ 
      ca-certificates \
&& apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN cd /root && mkdir report-generator
ADD osert.rb /root/report-generator
ADD build_pdf.sh /root/report-generator

# Get Eisvogel 2.0.0 template (latest as of 2021-07-14).
ENV PANDOC_VERSION=3.6.0
RUN wget https://github.com/jgm/pandoc/releases/download/3.6/pandoc-3.6-1-amd64.deb \
    && dpkg -i pandoc-3.6-1-amd64.deb \
    && rm pandoc-3.6-1-amd64.deb

RUN mkdir /tmp/eisvogel \
    && wget --directory-prefix /tmp/eisvogel https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.5.0/Eisvogel-2.5.0.tar.gz \
    && tar xf /tmp/eisvogel/Eisvogel-2.5.0.tar.gz --directory=/tmp/eisvogel \
    && mkdir -p /root/.local/share/pandoc/templates \
    && mv /tmp/eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/ \
    && rm -rf /tmp/eisvogel

# Default directories.
VOLUME /root/report-generator/output
VOLUME /root/report-generator/src
WORKDIR /root/report-generator

# Add entrypoint script.
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
