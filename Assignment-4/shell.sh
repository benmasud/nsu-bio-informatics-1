#!/bin/bash


input_fastq="./materials/input_good.fastq"
output_dir="./files"
index_ref="./materials/index/input.fna.gz"
output_sam="./output.sam"
output_bam="./output.bam"
flagstat_output="./flagstat.txt"
sorted_bam="./output.sorted.bam"
vcf_output="./outcome.vcf"


fastqc "$input_fastq" -o "$output_dir"

# Index the reference genome
bwa index "$index_ref"

# Align the reads to the reference genome
bwa mem -t 8 "$index_ref" "$input_fastq" > "$output_sam"

# Convert SAM to BAM format
samtools view -b "$output_sam" > "$output_bam"

# Run samtools flagstat to get alignment statistics
samtools flagstat "$output_bam" > "$flagstat_output"

# Quality check using flagstat results
qc=$(python3 flagstat_qc.py "$flagstat_output")

echo "ReadQC = $qc"

# Proceed based on quality assessment result
if [ "$qc" = "GOOD" ]; then

  # Sort BAM file
  samtools sort -o "$sorted_bam" "$output_bam"
  
  # Call variants using freebayes
  freebayes -f "$index_ref" "$sorted_bam" > "$vcf_output"
  
  echo "Successfully finished!"
else
  echo "Exit due to bad quality outcome"
fi
