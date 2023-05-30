FROM griffithlab/pvactools:3.0.2-slim

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV MHCFLURRY_DATA_DIR=/opt/mhcflurry_data

RUN apt-get update && \
    apt-get install -y build-essential cmake

RUN  cd /opt && \
    mkdir tmp_src && \
    cd tmp_src && \
    wget -O /usr/local/bin/bam_readcount_helper.py https://raw.githubusercontent.com/genome/docker-bam_readcount_helper-cwl/master/bam_readcount_helper.py && \
    chmod 755 /usr/local/bin/bam_readcount_helper.py && \
    cd /opt/tmp_src && \
    git clone https://github.com/genome/bam-readcount.git && \
    cd bam-readcount && \
    cmake . && \
    make && \
    cp bin/bam-readcount /usr/bin && \
    chmod 755 /usr/bin/bam-readcount && \
    cd /opt && \
    rm -rf /opt/tmp_src