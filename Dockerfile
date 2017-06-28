FROM ubuntu:16.04
 
WORKDIR /opt/
RUN apt-get update && apt-get -y install python python-numpy python-pandas python-docopt
COPY Dockerfile /opt/

COPY calculate_risk.py /opt/

CMD /bin/bash
 
# Maintainer
MAINTAINER Sinan Yavuz, Seven Bridges <sinan.yavuz@sbgenomics.com>
