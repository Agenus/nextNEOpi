FROM condaforge/mambaforge:22.11.1-4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

COPY ./cnvkit.yaml ./

RUN mamba env create --name cnvkit --file cnvkit.yaml && \
    mamba clean --all --yes

ENV CONDA_DEFAULT_ENV cnvkit

ENV PATH=/opt/conda/envs/cnvkit/bin:${PATH}
WORKDIR /opt/conda/envs/cnvkit/bin

RUN echo "source activate cnvkit" >> ~/.bashrc

