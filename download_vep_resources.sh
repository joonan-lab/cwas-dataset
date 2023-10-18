#!/bin/sh

echo "Create directory $HOME/.vep"
mkdir $HOME/.vep
cd $HOME/.vep
mkdir Plugins

echo "Download data"

#VEP_CONSERVATION_FILE
wget https://personal.broadinstitute.org/konradk/loftee_data/GRCh38/loftee.sql.gz
gunzip -k loftee.sql.gz

#VEP_HUMAN_ANCESTOR_FA
wget https://personal.broadinstitute.org/konradk/loftee_data/GRCh38/human_ancestor.fa.gz
wget https://personal.broadinstitute.org/konradk/loftee_data/GRCh38/human_ancestor.fa.gz.fai
wget https://personal.broadinstitute.org/konradk/loftee_data/GRCh38/human_ancestor.fa.gz.gzi

#VEP_GERP_BIGWIG
wget https://personal.broadinstitute.org/konradk/loftee_data/GRCh38/gerp_conservation_scores.homo_sapiens.GRCh38.bw

#VEP_LOFTEE
cd Plugins
# check the latest release
wget https://github.com/konradjk/loftee/archive/refs/tags/v1.0.4_GRCh38.tar.gz
tar -zxvf v1.0.4_GRCh38.tar.gz
mv loftee-1.0.4_GRCh38 loftee

echo "Done"