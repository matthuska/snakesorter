rule map_reads:
    shell:
        "bwa mem {input} | samtools view -b - > {output}"
    output:
        "results/mapped/A.bam"
    conda:
        "envs/mapping.yaml"
    input:
        "data/genome.fa",
        "data/samples/A.fastq"
