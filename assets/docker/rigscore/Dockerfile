FROM condaforge/mambaforge:22.11.1-4


COPY ./rigscore.yml ./

RUN mamba env create -f rigscore.yml && mamba clean --all --yes

ENV CONDA_DEFAULT_ENV rigscore
ENV PATH=/opt/conda/envs/rigscore/bin:${PATH}
