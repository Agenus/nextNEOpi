FROM condaforge/mambaforge:22.11.1-4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

COPY ./nextNEOpi.yml ./
COPY ./gatkPythonPackageArchive.zip ./

#RUN micromamba install --yes --name base --file ./nextNEOpi.yml && micromamba clean -y -a

RUN mamba env create --name nextNEOpi --file nextNEOpi.yml && \
    mamba clean --all --yes

ENV CONDA_DEFAULT_ENV nextNEOpi

ENV PATH=/opt/conda/envs/nextNEOpi/bin:${PATH}
WORKDIR /root

RUN echo "source activate nextNEOpi" >> ~/.bashrc
