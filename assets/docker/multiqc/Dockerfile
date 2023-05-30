FROM condaforge/mambaforge:22.11.1-4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

COPY ./multiqc.yaml ./

RUN mamba env create --name multiqc --file multiqc.yaml && \
    mamba clean --all --yes

ENV CONDA_DEFAULT_ENV multiqc

ENV PATH=/opt/conda/envs/multiqc/bin:${PATH}
WORKDIR /opt/conda/envs/multiqc/bin

RUN echo "source activate multiqc" >> ~/.bashrc

