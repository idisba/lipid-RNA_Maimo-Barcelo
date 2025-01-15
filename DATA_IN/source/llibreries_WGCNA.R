## Part no WGCNA
#install.packages("BiocManager")
#library(imager)

library(dplyr)
#install.packages("DOSE")
library(kableExtra)

## Part  WGCNA
#BiocManager::install("clusterProfiler") 
library(DOSE)
library(biomaRt)
library(clusterProfiler)

getOption("timeout")
options(timeout=2000)
#install.packages('https://cran.r-project.org/src/contrib/Archive/ff/ff_2.2-14.tar.gz',repos=NULL)
#BiocManager::install("affycoretools") 
library(org.Hs.eg.db)
options(timeout=60)
# library(ReactomePA)
# library("pathview")
library(oligo)
#BiocManager::install("affycoretools") 
library(affycoretools)

#BiocManager::install("WGCNA") 
library(WGCNA)
library(genefilter)
library(dplyr)
library(tibble)

library(limma)
library(DT)

#BiocManager::install("RcisTarget")
library(RcisTarget)

library(stats)

library(parallel)  
library(doParallel)
# BiocManager::install("WGCNA") 
library(WGCNA);
allowWGCNAThreads()
ALLOW_WGCNA_THREADS=10

# The following setting is important, do not omit.
options(stringsAsFactors = FALSE)
#Read in the female liver data set
