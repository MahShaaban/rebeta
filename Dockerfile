FROM rocker/verse
RUN apt-get update
RUN Rscript -e "install.packages('cowplot')"
RUN Rscript -e "install.packages('BiocManager')"
RUN Rscript -e "BiocManager::install('GenomicRanges')"
RUN Rscript -e "BiocManager::install('target')"

