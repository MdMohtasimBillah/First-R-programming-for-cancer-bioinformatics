if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("clusterProfiler")
BiocManager::install("org.Hs.eg.db")



library(org.Hs.eg.db)
library(clusterProfiler)
library(tidyverse)
library(readxl)
library(openxlsx)

# Load Data
a <- read_excel("Data/RFN.xlsx", sheet = 1) |>
  select(1)

b <- read_excel("Data/RFN.xlsx", sheet = 2) |>
  rename(`Gene Symbol` = Gene)

Gene_list <- bind_rows(a,b) |>
  distinct()

Gene_list_ensmbl <- bitr(Gene_list$`Gene Symbol`,
     fromType = "SYMBOL",
     toType = "ENTREZID",
     OrgDb = "org.Hs.eg.db")

RFN213_BP <- enrichGO(gene = Gene_list_ensmbl$ENSEMBL,
         OrgDb = "org.Hs.eg.db",
         keyType = "ENSEMBL",
         ont = "BP",
         pvalueCutoff = 0.05,
         qvalueCutoff = 0.02,
         pAdjustMethod = "BH")
dotplot(RFN213_BP)



enri(gene = Gene_list_ensmbl$ENTREZID,
         organism = "Homo sapiens",
         pvalueCutoff = 0.05,
         pAdjustMethod = "BH") |>
  dotplot()

enrichDAVID(Gene_list_ensmbl,
            idType = "ENTREZ_GENE_ID",
            universe, minGSSize = 10,
            maxGSSize = 500,
            annotation = "GOTERM_BP_FAT",
            pvalueCutoff = 0.05,
            pAdjustMethod = "BH",
            qvalueCutoff = 0.2,
            species = NA,
            david.user)
