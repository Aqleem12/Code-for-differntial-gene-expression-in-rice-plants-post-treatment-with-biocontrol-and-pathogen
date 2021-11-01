library(tidyverse)
library(pheatmap)
library(matrixStats)
setwd("F:/Thesis paper/R softwares")


read.csv("qpcrminus.csv") -> heatmap

head(heatmap)

heatmap %>% select(1:5) %>% column_to_rownames("Genes") -> heatmap_data

heatmap_data %>% pheatmap()

heatmap_data %>% log2() -> heatmap_data_log2 
heatmap_data_log2 %>% pheatmap()


heatmap_data_log2 %>% pheatmap(cluster_cols = T, cluster_rows = T, border_color = "green") -> heatmap_no_clustercol

read.csv("qpcrplus.csv") -> heatmap

head(heatmap)

heatmap %>% select(1:5) %>% column_to_rownames("Genes") -> heatmap_data

heatmap_data %>% pheatmap()

heatmap_data %>% log2() -> heatmap_data_log2 
heatmap_data_log2 %>% pheatmap()


heatmap_data_log2 %>% pheatmap(cluster_cols = T, cluster_rows = T, border_color = "green") -> heatmap_no_clustercol

