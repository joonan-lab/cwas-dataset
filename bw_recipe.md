## CWAS BigWig File Recipe

### Introduction

* This is a recipe to make PhyloP46way and PhastCons46way BigWig files.
* The result of CWAS were based on hg38.
* But both of the original PhyloP46way and PhastCons46way were only available for hg19.
* So we need to download those datasets and *LiftOver* them.

### Procedure

1. Download the original BigWig files
   * Vertebrate PhastCons46way: https://hgdownload.soe.ucsc.edu/goldenPath/hg19/phastCons46way/vertebrate.phastCons46way.bw
   * Vertebrate PhyloP46way: https://hgdownload.soe.ucsc.edu/goldenPath/hg19/phyloP46way/vertebrate.phyloP46way.bw
2. Download the chain file for *LiftOver*
   * hg19ToHg38: https://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz
3. Download *CrossMap* for *LIftOver*
   * *[CrossMap](https://crossmap.readthedocs.io/en/latest/)* is a python package which supports *LiftOver*.
   * This package makes BigWig file *LiftOver* much easier.
   *  Install this packge using the below command. (We assume you use Python 3.)
     ```bash
     pip3 install CrossMap
     pip3 install CrossMap --upgrade
     ```
   * **Note**: We recommand you to create a new conda enviroment and install this package inside the environment.
4. *LiftOver* them
   ```bash
   CrossMap.py bigwig hg19ToHg38.over.chain.gz vertebrate.phastCons46way.bw vertebrate.phastCons46way.hg19ToHg38
   CrossMap.py bigwig hg19ToHg38.over.chain.gz vertebrate.phyloP46way.bw vertebrate.phyloP46way.hg19ToHg38
   ```
   
   * It will take a very long time (approximately one day with 2 core).
   * So be patient and do other productive things while doing these.
