printf "Downloading bioinformatic tools"
cd ../
mkdir dependencies
cd dependencies
wget https://github.com/s-andrews/FastQC/archive/refs/tags/v0.11.9.tar.gz
tar -xvf v0.11.9.tar.gz
rm v0.11.9.tar.gz

wget https://github.com/ewels/MultiQC/archive/refs/tags/v1.13.tar.gz
tar -xvf v1.13.tar.gz
rm v1.13.tar.gz

cd ../
curl -s https://get.nextflow.io | bash

# Getting sample RNA-seq data for testing FastQC && MultiQC 
printf "Getting sample RNA-seq data for testing FastQC && MultiQC"

cd samples/rawData/
mkdir RNA-seq
cd RNA-seq
wget http://genomedata.org/rnaseq-tutorial/HBR_UHR_ERCC_ds_5pc.tar
tar -xf HBR_UHR_ERCC_ds_5pc.tar
rm HBR_UHR_ERCC_ds_5pc.tar

# Download the reference genome "Cicero_reference" was used
printf "Download the reference genome Cicero_reference was used"
cd ..
mkdir references
cd references
wget https://zenodo.org/record/5088371/files/reference.tar.gz
tar -xvf reference.tar.gz
rm reference.tar.gz
mv reference Cicero_reference