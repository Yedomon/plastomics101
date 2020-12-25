# plastomics101


## ka ks work 





###cds extraction from genbank files of chloroplast data



###Sesamum indicum
cd /home/kplee/analysis/cds_extraction/ind
gbseqextractor \
-f /home/kplee/datafiles/gbfiles_plastome/gb/Sesamum_indicum.gb \
-prefix ind_cds -seqPrefix ind -types CDS -cds_translation

### formating the gene head names
cat ind_cds.cds_translation.fasta | awk '{gsub(/indSesamum_in;/,"ind_")}1' > ind.cds.translation.formatted.fasta

### explode

cd /home/kplee/analysis/cds_extraction/ind/explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'



### Sesamum alatum
cd /home/kplee/analysis/cds_extraction/ala
gbseqextractor \
-f /home/kplee/datafiles/gbfiles_plastome/gb/Sesamum_alatum.gb \
-prefix ala -seqPrefix ala -types CDS -cds_translation


### formating the gene head names
cat ala.cds_translation.fasta | awk '{gsub(/alaSesamum_al;/,"ala_")}1' > ala.cds.translation.formatted.fasta

### explode
cd  /home/kplee/analysis/cds_extraction/ala/explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'


### Sesamum angolense
cd /home/kplee/analysis/cds_extraction/ang
gbseqextractor \
-f /home/kplee/datafiles/gbfiles_plastome/gb/Sesamum_angolense.gb \
-prefix ang -seqPrefix ang -types CDS -cds_translation


### formating the gene head names
cat ang.cds_translation.fasta | awk '{gsub(/angSesamum_an;/,"ang_")}1' > ang.cds.translation.formatted.fasta


### explode
cd  /home/kplee/analysis/cds_extraction/ang/explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'




### Sesamum pedaloides
cd /home/kplee/analysis/cds_extraction/ped
gbseqextractor \
-f /home/kplee/datafiles/gbfiles_plastome/gb/Sesamum_pedaloides.gb \
-prefix ped -seqPrefix ped -types CDS -cds_translation

### formating the gene head names
cat ped.cds_translation.fasta | awk '{gsub(/pedSesamum_pe;/,"ped_")}1' > ped.cds.translation.formatted.fasta


### explode
cd  /home/kplee/analysis/cds_extraction/ped/explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'



### Sesamum radiatum
cd /home/kplee/analysis/cds_extraction/rad
gbseqextractor \
-f /home/kplee/datafiles/gbfiles_plastome/gb/Sesamum_radiatum.gb \
-prefix rad -seqPrefix rad -types CDS -cds_translation

### formating the gene head names
cat rad.cds_translation.fasta | awk '{gsub(/radSesamum_ra;/,"rad_")}1' > rad.cds.translation.formatted.fasta



### explode
cd  /home/kplee/analysis/cds_extraction/rad/explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'




### now I will put indicum and alatum in a same directory for alignment


Hint: use a folder for ind and ala | put two by two by using cat ind_gene ala_gene > gene_name

then align using a loop for each gene

```
source activate mafft_env
mafft --maxiterate 1000 --localpair --thread 96 $genes > ${genes}.mafft
source deactivate mafft_env
```
