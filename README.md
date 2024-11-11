# Построение пайплайна получения генетических вариантов (Building a pipeline for obtaining genetic variants)

## Key Components and Utilities (Ключевые компоненты и утилиты)

| Description (Описание) | Title (Название) | Link (Ссылка) 
|---|---|---|
| Pipeline Framework (Фреймворк для пайплайнов) | ClearML | [clear.ml/clearml-pipelines](https://clear.ml/clearml-pipelines/) 
| Mapping/Indexing Tool (Инструмент для выравнивания и индексирования) | BWA | [github.com/lh3/bwa](https://github.com/lh3/bwa) 
| Sequencing Results Quality Assessment (Оценка качества результатов секвенирования) | FastQC | [bioinformatics.babraham.ac.uk/projects/fastqc](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) 
| SAM2BAM Conversion and Scoring (Преобразование SAM в BAM и оценка) | Samtools | [github.com/samtools/samtools](https://github.com/samtools/samtools) 
| Genetic Variant Calling (Определение генетических вариантов) | FreeBayes | [github.com/freebayes/freebayes](https://github.com/freebayes/freebayes) 
| Test Data: Reference Genome (Тестовые данные: Референсный геном) | E. Coli | [ncbi.nlm.nih.gov/assembly/GCF_000005845.2](https://www.ncbi.nlm.nih.gov/assembly/GCF_000005845.2/) 
| Test Data: Sequencing Result (Bad) (Тестовые данные: Результат секвенирования, плохое качество) | Illumina NextSeq E. Coli WGS | [ncbi.nlm.nih.gov/sra/SRX20419571](https://www.ncbi.nlm.nih.gov/sra/SRX20419571[accn])

<br>

1. **Bash Script**  
   _File:_ `shell_pipeline.sh`

2. **Flagstat Result**  
   _File:_ `flagstat.txt`

3. **Flagstat Parsing Script**  
   _File:_ `flagstat_qc.py`

4. **Pipeline Helloworld**  
   _File:_ `hellopipeline.py`

5. **Pipeline Code**  
   _File:_ `pipeline3.py`

ps. large files are avoided due to the size 

## Pipeline
(based on the given diagram )

1. All required packages specified above must be pre-installed on the agent.
2. Download the `fastq` and `fasta` files.
3. Run `fastqc` on the `fastq` files.
4. Run `bwa index` on the `fasta` file.
5. Run `samtools faidx` on the `fasta` file.
6. Run `bwa mem -t [CORES] fasta fastq... > output.sam`.
7. Run `samtools view -b output.sam > output.bam`.
8. Run `samtools flagstat output.bam`.
9. Parsing the `flagstat` result and evaluate the mapping quality. If the quality is less than 90%, the pipeline should be stopped.
10. Run `samtools sort -o output.sorted.bam output.bam`.
11. Run `freebayes -f fasta output.sorted.bam > outcome.vcf`.


## Разбор результатов работы пайплайна (Analysis of pipeline results)
<figure>
![flow2](https://github.com/user-attachments/assets/d6d3f653-68e5-45c3-88ae-8eb6cda2fb38)
  <figcaption> Рис. 1 - График на основе данных (Graph based on the data ) </figcaption>
</figure>

<figure>
![logs_1](https://github.com/user-attachments/assets/b18bf87d-3db6-4af3-86e0-9d60ec756ca5)
  <figcaption> Рис. 2 - Общие логи запуска пайплайна (General pipeline run logs) </figcaption>
</figure>


