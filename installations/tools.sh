printf "Downloading bioinformatic tools"
cd ../dependencies
wget https://github.com/s-andrews/FastQC/archive/refs/tags/v0.11.9.tar.gz
tar -xvf v0.11.9.tar.gz
rm v0.11.9.tar.gz

wget https://github.com/ewels/MultiQC/archive/refs/tags/v1.13.tar.gz
tar -xvf v1.13.tar.gz
rm v1.13.tar.gz
cd ../
curl -s https://get.nextflow.io | bash