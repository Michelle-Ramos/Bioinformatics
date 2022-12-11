#!/usr/bin/env nextflow
nextflow.enable.dsl=2


// Here we have our parameters
params.HBRrep1read1 = "HBR_Rep1_ERCC-Mix2_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.HBRrep1read2 = "HBR_Rep1_ERCC-Mix2_Build37-ErccTranscripts-chr22.read2.fastq.gz"
params.HBRrep2read1 = "HBR_Rep2_ERCC-Mix2_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.HBRrep2read2 = "HBR_Rep2_ERCC-Mix2_Build37-ErccTranscripts-chr22.read2.fastq.gz"
params.HBRrep3read1 = "HBR_Rep3_ERCC-Mix2_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.HBRrep3read2 = "HBR_Rep3_ERCC-Mix2_Build37-ErccTranscripts-chr22.read2.fastq.gz"
params.UHRrep1read1 = "UHR_Rep1_ERCC-Mix1_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.UHRrep1read2 = "UHR_Rep1_ERCC-Mix1_Build37-ErccTranscripts-chr22.read2.fastq.gz"
params.UHRrep2read1 = "UHR_Rep2_ERCC-Mix1_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.UHRrep2read2 = "UHR_Rep2_ERCC-Mix1_Build37-ErccTranscripts-chr22.read2.fastq.gz"
params.UHRrep3read1 = "UHR_Rep3_ERCC-Mix1_Build37-ErccTranscripts-chr22.read1.fastq.gz"
params.UHRrep3read2 = "UHR_Rep3_ERCC-Mix1_Build37-ErccTranscripts-chr22.read2.fastq.gz"


params.fastqc = "../dependencies/FastQC-0.11.9/fastqc"


process fastqc {
    output:
        stdout
    script:
    """
    printf 'Running quality control using Fastqc' 
    cd ../../../
    cd dependencies/FastQC-0.11.9
    printf "Running Fastqc"

    fastqc  -o ../../reports/ -f fastq ../../samples/rawData/RNA-seq/${params.HBRrep1read1} ../../samples/rawData/RNA-seq/${params.HBRrep1read2}
    cd ../../reports
    multiqc .
    google-chrome multiqc_report.html
    """
}


// fastqc  -o ../../reports/ -f fastq ../rawData/RNA-seq/${params.HBRrep2read1} ../rawData/RNA-seq/${params.HBRrep2read2}
// fastqc  -o ../../reports/ -f fastq ../rawData/RNA-seq/${params.HBRrep3read1} ../rawData/RNA-seq/${params.HBRrep3read2}
// fastqc  -o ../../reports/ -f fastq ../rawData/RNA-seq/${params.UHRrep1read1} ../rawData/RNA-seq/${params.UHRrep1read2}
// fastqc  -o ../../reports/ -f fastq ../rawData/RNA-seq/${params.UHRrep2read1} ../rawData/RNA-seq/${params.UHRrep2read2}
// fastqc  -o ../../reports/ -f fastq ../rawData/RNA-seq/${params.UHRrep3read1} ../rawData/RNA-seq/${params.UHRrep3read2}



workflow quality {
    main:
        fastqc() | flatten | view        
}