# load required libraries
library(tidyverse)
library(cowplot)

source('code/function-def.R')

# make directories
if(!dir.exists('output/manuscript/')) dir.create('output/manuscript/')
if(!dir.exists('output/manuscript/figures/')) dir.create('output/manuscript/figures/')

# make figure
plot_grid(plotlist = list(
    plot_target(res_file = 'data/target_output/basic_AR_3656.rds',
                cut_top = 500) +
        ggtitle('AR in LNCaP'),
    
    plot_target(res_file = 'data/target_output/basic_ESR1_349.rds',
                cut_top = 500) +
        ggtitle('ESR1 in MCF-7'),
    
    plot_target(res_file = 'data/target_output/basic_Tet1_5795.rds',
                cut_top = 500) +
        ggtitle('Tet1 in ES cells')
    ),
    nrow = 1,
    scale = .9,
    labels = 'AUTO',
    label_fontface = 'plain',
    label_size = 10) %>%
    ggsave(filename = 'output/manuscript/figures/ecdf.png',
           width = 24, height = 8, units = 'cm')
