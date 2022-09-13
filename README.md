# snakesrt - a Snakemake rule parameter sorter

_snakesrt_ sorts the rule parameters in Snakemake files to ensure that
parameters in all rules appear in the same order.

*This software is not ready for use yet and will break your code*

Rule parameters are output in the following order:

- input
- output
- params
- log
- benchmark
- cache
- message
- threads
- resources
- version
- conda
- container
- run
- shell
- script
- notebook
- template_engine

This ordering is taken from the [Snakemake syntax grammar](https://snakemake.readthedocs.io/en/stable/snakefiles/writing_snakefiles.html#grammar).

## Example

Input:

```
rule bwa_map:
    shell:
        "bwa mem {input} | samtools view -Sb - > {output}"
    output:
        "mapped_reads/A.bam"
    input:
        "data/genome.fa",
        "data/samples/A.fastq"
```

Output:

```
rule bwa_map:
    input:
        "data/genome.fa",
        "data/samples/A.fastq"
    output:
        "mapped_reads/A.bam"
    shell:
        "bwa mem {input} | samtools view -Sb - > {output}"
```

