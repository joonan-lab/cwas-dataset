# cwas-dataset
## Introduction

* This repository gives you default datasets and configuration files to execute [Category-Wide Assiciation Study (CWAS)](https://github.com/mwjjeong/cwas). 
* You can reproduce the results of [An et al., 2018](https://science.sciencemag.org/content/362/6420/eaat6576) by using these datasets.

## Dataset List

* *gene_matrix.txt*: List of genes with their functional annotations
* *categories.yaml*: Configuration file that specifies groups of annotation terms used in CWAS
* *redundant_categories.yaml*: Combinations of annotation terms which is impossible
* *bed.tar.gz*: BED files for annotating variants
* BigWig files for vertebrate conservation scores
  * PhyloP46way and PhastCons46Way
  * Because the original files are too big, we give you [a manual to create BigWig files for CWAS](bw_recipe.md).

## Notes

* All the analyses in CWAS were based on **hg38**, so all the BED and BigWig files in this repository were also for hg38.
* You must match the genome assembly between datasets (especially VCF, BED, and BigWig files) for CWAS.





