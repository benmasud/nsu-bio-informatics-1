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
   _File:_ `shell.sh`

2. **Flagstat Result**  
   _File:_ `flagstat.txt`

3. **Flagstat Parsing Script**  
   _File:_ `flagstat_script.py`

4. **Pipeline Helloworld**  
   _File:_ `simple_pipeline_test.py`

5. **Pipeline Code**  
   _File:_ `pipeline.py`

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

<div style="text-align: center; margin-bottom: 20px;">
  <img src="https://github.com/benmasud/nsu-bio-informatics-1/blob/Assignment-4/Assignment-4/others/flow2.png" alt="flow2">
  <figcaption>Рис. 1 - График на основе данных (Graph based on the data)</figcaption>
</div>

<div style="text-align: center;">
  <img src="https://github.com/benmasud/nsu-bio-informatics-1/blob/Assignment-4/Assignment-4/others/logs_1.png" alt="logs_1">
  <figcaption>Рис. 2 - Общие логи запуска пайплайна (General pipeline run logs)</figcaption>
</div>



