#fastq data quality control
  fastqc sample_R1.fastq.gz sample_R2.fastq.gz -o fastqc_output/
  trim_galore --paired sample_R1.fastq.gz sample_R2.fastq.gz -o trimmed_reads/

#mapping

/bin/cellranger-6.0.1/cellranger count \ 
--id=D267fat11_3_RNA \ 
--transcriptome=/bin/BtaurusUCD1.2 \ 
--fastqs=/RNA/ \ 
--sample=ID \ 
--include-introns 
