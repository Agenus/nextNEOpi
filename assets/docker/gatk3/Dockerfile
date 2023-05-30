FROM condaforge/mambaforge:22.11.1-4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

RUN mamba create --name gatk3 -y -c conda-forge -c bioconda -c defaults gatk=3.5 samtools && \
    mamba clean --all --yes

ENV CONDA_DEFAULT_ENV gatk3

ENV PATH=/opt/conda/envs/gatk3/bin:${PATH}
WORKDIR /opt/conda/envs/gatk3/bin

RUN echo "source activate gatk3" >> ~/.bashrc

