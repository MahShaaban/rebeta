# load required libraries
library(tidyverse)
library(xtable)

# make table

tibble(
    Factor = c('AR', 'ESR1', 'Tet1'),
    `Cell Line` = c('LNCaP', 'MCF-7', 'ES Cells'),
    Genome = c('hg19', 'hg19', 'mm9'),
    Treatment = c('DHT', 'E2', 'Knockdown'),
    `Binding Data` = c('\\cite{Wang2007a}', '\\cite{Hu2010}', '\\cite{Williams2011}'),
    `Expression Data` = c('\\cite{Wang2007a}', '\\cite{Carroll2006}', '\\cite{Williams2011}')
) %>%
    xtable(align = 'cllllcc') %>%
    print(floating = FALSE,
          include.rownames = FALSE,
          booktabs = TRUE,
          sanitize.text.function = identity,
          comment = FALSE,
          file = 'output/manuscript/tables/datasets.tex')
