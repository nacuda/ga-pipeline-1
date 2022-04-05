metadata=data/trimmed_fastq/data_names.txt
outdir=data/bam
infiles=$(cut -d' ' -f 1 $metadata | grep _1.trim.fastq.gz)
indir=data/trimmed_fastq
for filename in $infiles; do
  sbatch scripts/bwamem.bash $indir/$filename $outdir
done
