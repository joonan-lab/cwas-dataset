# cwas-dataset
## Introduction

* This repository gives you default datasets and configuration files to execute [Category-Wide Assiciation Study (CWAS-Plus)](https://github.com/joonan-lab/cwas/tree/dev). 
* You can reproduce the results of [An et al., 2018](https://science.sciencemag.org/content/362/6420/eaat6576) by using these datasets.

## Dataset List

* *annotation_keys.yaml*: List of annotation datasets with the exact file names and short names used for CWAS-Plus annotation.
* *gene_matrix.txt*: List of genes with their functional annotations.
* *download_vep_resources.sh*: Code to download VEP resources.
* *configuration.txt*: Configuration file for CWAS-Plus specifying VEP path and required resources.
* *functional_annotations.tar.gz*: BED files for annotating variants. After decompressing, please move the files within the directory to the parent directory "cwas-dataset."
* *MPC_hg38.vcf.bgz*: Database for annotation damaging missense variants. For further information, please refer to the provided [reference](https://www.biorxiv.org/content/10.1101/148353v1).
* BED files for vertebrate conservation scores
  * PhyloP46way and PhastCons46Way
  * Due to the large file sizes, we provide an alternative download link for the original files.

## How to Download?
```
git clone https://github.com/joonan-lab/cwas-dataset.git
cd cwas-dataset
git lfs pull
```

To download VEP resources all at once, use the following command.
```
sh download_vep_resources.sh
```
If it asks for permission, try `sh download_vep_resources.sh`.

## Notes

* All the analyses in CWAS were based on **hg38**, so all the BED and BigWig files in this repository were also for hg38.
* You must match the genome assembly between datasets (especially VCF, BED, and BigWig files) for CWAS-Plus.





