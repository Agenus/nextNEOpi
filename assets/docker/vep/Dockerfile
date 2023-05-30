FROM condaforge/mambaforge:22.11.1-4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

COPY ./vep.yaml ./

RUN mamba env create --name vep --file vep.yaml && \
    mamba clean --all --yes

ENV CONDA_DEFAULT_ENV vep

ENV PATH=/opt/conda/envs/vep/bin:${PATH}
WORKDIR /opt/conda/envs/vep/bin

RUN echo "source activate vep" >> ~/.bashrc
