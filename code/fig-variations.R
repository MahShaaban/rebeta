# load libraries
library(tidyverse)
library(cowplot)

source('code/function-def.R')

# load data
sets <- seq(1, 10000, 99)

plot_grid(plotlist = list(
    plot_concordance('data/target_output/variants_AR_3656.rds',
                     'defaults',
                     sets) +
        ggtitle('AR in LNCaP'),
    plot_concordance('data/target_output/variants_ESR1_349.rds',
                     'defaults',
                     sets) +
        ggtitle('ESR1 in MCF-7'),
    plot_concordance('data/target_output/variants_Tet1_5795.rds',
                     'defaults',
                     sets) +
        ggtitle('Tet1 in ES cells')
),
nrow = 1,
scale = .9,
labels = 'AUTO',
label_fontface = 'plain',
label_size = 10) %>%
    ggsave(filename = 'output/manuscript/figures/variations.png',
           width = 24, height = 8, units = 'cm')
