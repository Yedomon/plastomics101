# plastomics101



# Chloroplast




- #### Comparative chloroplast genome analysis



[Evolutionary dynamics of the chloroplast genome sequences of six Colobanthus species](https://www.nature.com/articles/s41598-020-68563-5#Sec11)




1 Syntheny


>  Genome synteny analysis of the eight Colobanthus plastomes (six genomes reported in this paper, and C. quitensis and C. apetalus that were previously characterized and deposited in NCBI25,26) was performed with the use of MAUVE v.1.1.1


2 Ka and Ks



 >  The evolutionary rate of the plastome genes identified in all Colobanthus species (C. acicularis, C. affinis, C. apetalus, C lycopodioides, C. nivicola, C. pulvinatus, C. quitensis and C. subulatus) was analyzed. A total of 78 genes were selected to estimate the ratio of non-synonymous (Ka) to synonymous (Ks) substitutions. Colobanthus quitensis was the reference species. These genes were extracted and aligned separately using MAFFT v7.310. The values of Ka and Ks in the shared genes were calculated in DnaSP v.6.10.04. Genes with non-applicable (NA) Ka/Ks ratios were changed to zero.


3 nucleotide diversity


>  The sequences were aligned in MAFFT v.7.31096 to perform sliding window analysis and evaluate nucleotide diversity (π) in cp genomes using DnaSP v.6.10.0497. The step size was set to 50 base pairs, and window length was set to 800 base pairs.



4 Potential RNA editing sites



> Potential RNA editing sites in the protein-coding genes of chloroplast genomes were predicted using the Predictive RNA Editor for Plants (PREP) suite98. The cutoff value for the analyzed Colobanthus species was set at 0.8, and 34 out of the 35 reference genes in PREP were used. rpl23 was not included in the analysis because it was not identified within the chloroplast genomes of the studied Colobanthus species. Two previously sequenced cp genomes of C. quitensis and C. apetalus25,26 were also included in this analysis.



5 Phylogenetic analysis




>  The available (24) complete chloroplast genomes representing Caryophyllaceae lineages and the cp genome of Arabidopsis thaliana as an outgroup were downloaded from the NCBI database to investigate the phylogenetic relationships among the studied representatives of the genus Colobanthus and the genera in the family Caryophyllaceae. The cp genomes used in phylogenetic analyses are presented in Table 3. The sequences of 73 shared protein coding genes were extracted using custom R script, and they were aligned in MAFFT v.7.310. Finally, 73 concatenated protein-coding gene sequences where used for phylogeny reconstruction by Bayesian Inference (BI) and Maximum-Likelihood (ML) method. The best-fit model of sequence evolution was identified in MEGA v.799, and the GTR + G + I model was selected. The BI analysis was performed in MrBayes v.3.2.6100,101, and the ML analysis was conducted in PhyML v.3.0102. Parameter settings were previously described by Androsiuk et al.26.



6 




Pi   [Figure 5](https://www.nature.com/articles/s41598-020-68563-5/figures/5)




- #### [Molecular phylogenetics provides new insights into the systematics of Pimelea and Thecanthes (Thymelaeaceae)](https://www.publish.csiro.au/SB/SB16013) 



`Partitioning the dataset is an important step in phylogenetic
analyses, because this process is known to affect the accuracy of
phylogenetic inference (Lanfear et al. 2012). Accordingly, we
selected the best-fitting partitioning scheme by using the
greedy search algorithm in PartitionFinder ver. 1.1.1 (Lanfear
et al. 2012). The optimal partitioning scheme split the sequence
alignment into six subsets (Table 2).`





- #### [Question: extract annotation for mVISTA whole genome comparison](https://www.biostars.org/p/364641/) | [Answer](https://blogs.fu-berlin.de/gruenstaeudl/2020/10/12/buena-vista-con-mvista/)


Buena vista con mVISTA
For an upcoming publication, a doctoral student and I want to visualize the sequence variability among several plastid genomes via the tool mVISTA. This tool is often employed in plastid phylogenomic studies and generally simple to use. However, if a user wishes to input custom annotations, it can be quite tricky to generate the correct input for the software. Hence, I automated the generation of the input files as described below.

An effective visualization of plastid genomes in mVISTA requires the x input genomes the user wants to visualize („input genomes“ hereafter; e.g., x=2) as well as a reference genome. For simplicity, a user could employ x1 as the reference genome. The input genomes should be in FASTA format, the reference genome in GenBank format.

To generate custom annotations based on the reference genome, I employ the following Bash code, which (a) converts the reference genome from GenBank format to a cleaned GFF3 format (and incidentally also saves the genome in FASTA format), and (b) converts the cleaned GFF3 file to the mVISTA input.

```
NF=NC_000932.gb # Just an example
## Converting input file from GenBank format to a cleaned GFF3 format
# Note: This step also generates a FASTA file
grep -vE "codon_start|db_xref|exception" $INF > ${INF}2
to-gff --getfasta ${INF}2 ${INF%.gb*}.gff
grep "gene=" ${INF%.gb*}.gff | \
    awk -F';' '{print $1}' | \
    grep -vE "remark|intron|misc_feature|repeat_region" > ${INF%.gb*}.gff.clean
rm ${INF}2 ${INF%.gb*}.gff
## Converting input file from GFF3 format to VISTA format
grep -v "^#" ${INF%.gb*}.gff.clean | \
    grep -v "rps12" | \
    awk '{if ($3 ~ /gene/) {print $7" "$4" "$5" "$3" "$9} else {print $7" "$4" "$5" "$3} }' | \
    awk '{if ($4 ~ /gene/) {gsub(/\+/, ">", $1); gsub(/\-/, "<", $1); print $0} else {$1=""; print $0} }' | \
    sed 's/gene=//' | \
    sed 's/gene/agene/' | \
    sort -n -k2 | \
    sed 's/agene/gene/' | \
    awk '{$1=$1}1' | \
    sed 's/CDS/exon/' | \
    sed 's/tRNA/utr/' | \
    sed 's/rRNA/utr/' > ${INF%.gb*}.mvista


```







- #### My ultimate analyses reference from Bioinformaticians of Indian | [Trichopus zeylanicus](https://acsess.onlinelibrary.wiley.com/doi/full/10.3835/plantgenome2019.04.0032)



 - #### [The complete chloroplast genome of Gleditsia sinensis and Gleditsia japonica: genome organization, comparative analysis, and development of taxon specific DNA mini-barcodes](https://www.nature.com/articles/s41598-020-73392-7#Sec14)

- #### [The Complete Chloroplast Genome Sequences of 14 Curcuma Species: Insights Into Genome Evolution and Phylogenetic Relationships Within Zingiberales](https://www.frontiersin.org/articles/10.3389/fgene.2020.00802/full)


- #### [GOOD PLANT PLASTOME ANNOTATION TOOL](https://chloe.plantenergy.edu.au/annotate.html)  | THESIS [HERE](https://research-repository.uwa.edu.au/en/publications/assembly-annotation-and-analysis-of-chloroplast-genomes)

- #### [un bon argumentaire ..le graph des chloroplast la avec la perte du gene en question](https://peerj.com/articles/9315/)

- #### [Le graph de dn/ds et le choix de l'assemblage](https://www.mdpi.com/2223-7747/9/11/1497)

- #### [Simple et clair a suivre ](https://www.frontiersin.org/articles/10.3389/fpls.2018.01989/full)

- ##### vraiment interessant paper chloroplast SNP origins geography [paper](https://www.frontiersin.org/articles/10.3389/fpls.2019.00334/full#h3)

- #### [commentaire des resultats](https://www.mdpi.com/2223-7747/9/10/1332)

- #### Use of novoplasty for chloroplast assembly | [Example 1](https://www.frontiersin.org/articles/10.3389/fgene.2019.00444/full#h3) | [Example 2](https://www.frontiersin.org/articles/10.3389/fpls.2020.00729/full#h3) | [Example 3](https://www.hindawi.com/journals/bmri/2020/8542797/) | [Example 4](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-019-6253-5) | [Example 5](https://www.nature.com/articles/s41598-018-35654-3#Sec2) | [Example 6](https://www.nature.com/articles/s41598-019-48708-x#Sec10) | [Example 7](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6646306/) | [Example 8](https://www.mdpi.com/1422-0067/19/8/2443/htm) | [Example 9](https://link.springer.com/article/10.1007/s11033-020-05567-4?utm_source=other) | [Example 10](https://acsess.onlinelibrary.wiley.com/doi/full/10.1002/tpg2.20019)

- #### Distribution de mes samples

- ##### [Sesamum indicum](http://www.plantsoftheworldonline.org/taxon/urn:lsid:ipni.org:names:675971-1)

- ##### [Sesamum alatum](http://www.plantsoftheworldonline.org/taxon/urn:lsid:ipni.org:names:675950-1)

- ##### [Sesamum angolense](http://www.plantsoftheworldonline.org/taxon/urn:lsid:ipni.org:names:675951-1)

- ##### [Sesamum radiatum](http://www.plantsoftheworldonline.org/taxon/urn:lsid:ipni.org:names:675994-1)

- ##### [Sesamum pedaloides](https://books.google.co.kr/books?id=lUOWDwAAQBAJ&pg=PA301&lpg=PA301&dq=Sesamum+pedaloides&source=bl&ots=65fqz989JJ&sig=ACfU3U1Z7J8P9tl3NvSS1wtBmHbdpb4rRg&hl=fr&sa=X&ved=2ahUKEwjnrbr26KHsAhWrIqYKHW5gB9cQ6AEwDnoECAUQAg#v=onepage&q=Sesamum%20pedaloides&f=false) | Page 25



- ##### Parfait exemple using chloroplast to solve taxonomic dispute | Idee Map pour ton article | [Taxonomy and biogeography of Diapensia (Diapensiaceae) based on chloroplast genome data](https://onlinelibrary.wiley.com/doi/full/10.1111/jse.12597?casa_token=RqchIwzluSQAAAAA%3AyULyoTr8U-Pm0JS22W44Igy3H1Hs1tV-xyoy0T8SM-ktTXsBBz9dMz0sL2syNYUbSLrMN1iUgnmSV062)


- #### 2020 Bel argument en faveur du choix des CDs pour le phylogenetic analysis 

> Only the homologous CDs were used to construct the phylogenetic relationship to reduce data redundancy...

[Chloroplast genome features of an important medicinal and edible plant: Houttuynia cordata (Saururaceae)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0239823)


- #### 2020 Wahooo nice surprise | Only One species in Genomis Elselvier | [Characterization of Withania somnifera chloroplast genome and its comparison with other selected species of Solanaceae](https://www.sciencedirect.com/science/article/pii/S0888754319303258)

- #### A second example from Genomics elselvier | [Chloroplast genome sequences of Artemisia maritima and Artemisia absinthium: Comparative analyses, mutational hotspots in genus Artemisia and phylogeny in family Asteraceae](https://www.sciencedirect.com/science/article/pii/S0888754319304537#!)

- #### [A third example: Evolutionary dynamics of chloroplast genomes in subfamily Aroideae (Araceae)](https://reader.elsevier.com/reader/sd/pii/S0888754319308420?token=02DF5B01DEF65C2E1F4696ADFC4E0C5757E302859EB016BCA306C9882B6983078C077A62658FF6B41F90EB878CDE0F2D)


- #### Very nice argument | `` Previous studies based on plastid fragments and/or nuclear ribosomal DNA have had limited success resolving relationships within the genus Salvia. This study evaluates the efficacy of complete plastome sequences for phylogenetic inference within Salvia, using the recently established Salvia subg. Glutinaria as a case study. We use these plastomes to identify hypervariable and simple sequence repeat (SSR) regions for future studies within Salvia.`` [The Chloroplast Genome of Salvia: Genomic Characterization and Phylogenetic Analysis](https://www.journals.uchicago.edu/doi/pdf/10.1086/710083)


- #### 2020 Only two | Very nice R graph [Comparative analysis of chloroplast genomes in Vasconcellea pubescens A.DC. and Carica papaya L.](https://www.nature.com/articles/s41598-020-67943-1)
- #### 2020 Like my case [Evolutionary and phylogenetic aspects of the chloroplast genome of Chaenomeles species](https://www.nature.com/articles/s41598-020-67943-1)

- #### [The Complete Chloroplast Genome Sequence of the Speirantha gardenii: Comparative and Adaptive Evolutionary Analysis](https://www.mdpi.com/2073-4395/10/9/1405)

- #### [Species-tree inference with BEAST 2 and SNAPP](http://evomics.org/learning/population-and-speciation-genomics/2020-population-and-speciation-genomics/species-tree-inference/)
- #### [IRscope creator plastome paper](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0196069)

- #### [inverted repeat structural evolution in Rhus L](https://peerj.com/articles/9315/)

- #### [Simple tuto](https://www.nature.com/articles/s41598-020-59204-y.pdf)

- #### [Interessant title](https://www.nature.com/articles/s41598-020-68563-5#Sec11)


- #### [Insights Into Chloroplast Genome Evolution Across Opuntioideae (Cactaceae) Reveals Robust Yet Sometimes Conflicting Phylogenetic Topologies](https://www.frontiersin.org/articles/10.3389/fpls.2020.00729/full#B91)

- #### [Best Practices/Softwares To Calculate Ka/Ks Ratio](https://www.biostars.org/p/5817/)

- #### [The complete chloroplast genome of Stryphnodendron adstringens (Leguminosae - Caesalpinioideae): comparative analysis with related Mimosoid species](https://www.nature.com/articles/s41598-019-50620-3)

- #### [The Complete Chloroplast Genome Sequences of the Medicinal Plant Forsythia suspensa (Oleaceae)](https://www.mdpi.com/1422-0067/18/11/2288)

- #### [Comparative Analysis of the Complete Chloroplast Genomes of Five Quercus Species](https://www.frontiersin.org/articles/10.3389/fpls.2016.00959/full)

- #### [IR CONTRACTION](https://www.nature.com/articles/s41438-019-0171-1#:~:text=Compared%20with%20the%20nuclear%20genome,for%20diversity%20and%20evolution%20studies.)

- #### [PSEUDOGENE](https://peerj.com/articles/2699/?utm_source=TrendMD&utm_campaign=PeerJ_TrendMD_1&utm_medium=TrendMD)

- #### [Inspiration](https://www.researchsquare.com/article/rs-20050/v1)

- #### [Dr swati 1](https://peerj.com/articles/9448/)

- #### [Dr swati 2](https://www.mdpi.com/2223-7747/9/5/568/htm)



## Nucleotide diversity work

I used DNAsp v6. First I aligned using MAFFT all fasta files then import the alignment file into DNAsp > analysis > Polymorphism and Divergence and get the plot by clicking on compute.

Then move to R

I used the nucleotide diversity [data](https://github.com/Yedomon/plastomics101/blob/main/pi.csv) and ran this code.




``` {r}


# Libraries
library(ggplot2)
# Data
data_pi = read.csv("pi.csv",sep = "," , h = T)

# Plot

p <- ggplot(data_pi, aes(x=Midpoint, y=Pi, colour = Pi)) +
  ylim(0,0.033) +
  geom_line() +
  scale_colour_gradient2(low = "#0000b3", mid = "#3333ff" , high = "#ff0000", midpoint=median(data_pi$Pi)) +
  #theme(legend.position="none") +
  geom_hline(yintercept=0.017, color="#00b300", size=.4, linetype = "dotted" ) +
  theme_minimal()
  
p



g <- ggplot(data_pi, aes(x=Midpoint, y=Pi, colour = Pi)) +
  ylim(0,0.033) +
  geom_line() +
  scale_colour_gradient2(low = "#0000b3", mid = "#3333ff" , high = "#ff0000", midpoint=0.013) +
  #theme(legend.position="none") +
  geom_hline(yintercept=0.015, color="#00b300", size=.4, linetype = "dotted") +
  labs(y = expression(Nucleotide~diversity~(pi)), x = "Midpoint position") +
  theme_minimal()+
  theme(panel.grid.major = element_line(colour = "grey", size = 0.2, linetype = "dotted")) +
  theme(panel.grid.minor = element_line(colour = "grey", size = 0.2, linetype = "dotted")) +
  theme(plot.background = element_rect(colour = "white", size = 1))+
  theme(axis.text = element_text(colour = "black")) +
  scale_x_continuous(limits=c(0,155000),
  breaks = seq(0, 155000, by = 25000)) +
  scale_y_continuous(limits=c(0,0.035),
                     breaks = seq(0, 0.035, by = 0.005))
  



````

and further process with Inkscape for arrow edition and annotation and get [this](https://github.com/Yedomon/plastomics101/blob/main/pi3.pdf). I used the g plot not the p.



## ka ks work 

### cds extraction from genbank files of chloroplast data

##### Install gbseqextractor tool on centos 7

```

sudo yum search pip | grep python # to see availeble version

sudo yum install python3-pip.noarch

pip3 install gbseqextractor


```

# Indicum

```

cd /home/kplee/analysis/0003_extraction/ind

gbseqextractor \
-f /home/kplee/datafiles/004_extraction/all_gb_files/Sesamum_indicum.gb \
-prefix indicum -seqPrefix ind -types CDS -cds_translation


### formating the gene head names
cat  indicum.cds.fasta | awk '{gsub(/indSesamum_in;/,"ind_")}1' > ind.cds.formatted.fasta


### explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```

# alatum
```
cd /home/kplee/analysis/0003_extraction/ala


gbseqextractor \
-f /home/kplee/datafiles/004_extraction/all_gb_files/Sesamum_alatum.gb \
-prefix alatum -seqPrefix ala -types CDS -cds_translation

### formating the gene head names
cat  alatum.cds.fasta | awk '{gsub(/alaSesamum_al;/,"ala_")}1' > ala.cds.formatted.fasta



### explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'


```


# angolense



```
cd /home/kplee/analysis/0003_extraction/ang


gbseqextractor \
-f /home/kplee/datafiles/004_extraction/all_gb_files/Sesamum_angolense.gb \
-prefix angolense -seqPrefix ang -types CDS -cds_translation

### formating the gene head names
cat  angolense.cds.fasta | awk '{gsub(/angSesamum_an;/,"ang_")}1' > ang.cds.formatted.fasta



### explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'


```

# pedaloides



```
cd /home/kplee/analysis/0003_extraction/ped


gbseqextractor \
-f /home/kplee/datafiles/004_extraction/all_gb_files/Sesamum_pedaloides.gb \
-prefix pedaloides -seqPrefix ped -types CDS -cds_translation

### formating the gene head names
cat  pedaloides.cds.fasta | awk '{gsub(/pedSesamum_pe;/,"ped_")}1' > ped.cds.formatted.fasta



### explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'


```



# radiatum



```
cd /home/kplee/analysis/0003_extraction/rad


gbseqextractor \
-f /home/kplee/datafiles/004_extraction/all_gb_files/Sesamum_radiatum.gb \
-prefix radiatum -seqPrefix rad -types CDS -cds_translation

### formating the gene head names
cat  radiatum.cds.fasta | awk '{gsub(/radSesamum_ra;/,"rad_")}1' > rad.cds.formatted.fasta



### explode

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'


```


### now I will put indicum and alatum in a same directory for alignment


Hint: use a folder for ind and ala | put two by two by using cat ind_gene ala_gene > gene_name

then align using a loop for each gene


```
source activate mafft_env
mafft --maxiterate 1000 --localpair --thread 96 $genes > ${genes}.mafft
source deactivate mafft_env
```



[rna editing](http://prep.unl.edu/)


# Installation of PAML on Centos 7


```
$ wget http://abacus.gene.ucl.ac.uk/software/paml4.9j.tgz
$ tar xf paml4.9j.tgz
$ cd paml4.9j
$ rm bin/*.exe
$ cd src
$ make -f Makefile
$ ls -lF
$ rm *.o
$ mv baseml basemlg codeml pamp evolver yn00 chi2 ../bin
$ cd ..

```


Install PAL2NAL



```

wget http://www.bork.embl.de/pal2nal/distribution/pal2nal.v14.tar.gz

tar -xzvf pal2nal.v14.tar.gz

```


Install clustal-omaga


```

wget http://www.clustal.org/omega/clustalo-1.2.4-Ubuntu-x86_64

chmod u+x clustalo-1.2.4-Ubuntu-x86_64

```

[newpub](https://assets.researchsquare.com/files/rs-128918/v1/71422647-8721-42a2-8f3a-6403142dc53f.pdf)
[newpub2](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0241391)
[newpub3](https://assets.researchsquare.com/files/rs-128918/v1/71422647-8721-42a2-8f3a-6403142dc53f.pdf)
[paper genome](https://www.nature.com/articles/s41438-020-00449-z#Sec13)



Test ka ks calculation following this [tutorial](https://www.protocols.io/view/introduction-to-calculating-dn-ds-ratios-with-code-qhwdt7e?step=2)



```

git clone https://github.com/faylward/dnds

# Create an amino acid alignment

/home/kplee/program/clustalo/clustalo-1.2.4-Ubuntu-x86_64 -i cluster_1.faa -o cluster_1.aln.faa

# Convert aa alignment to na alignment

/home/kplee/program/pal2nal.v14/pal2nal.pl cluster_1.aln.faa cluster_1.fna -output paml -nogap > cluster_1.pal2nal

# Run codeml

# copy cluster_1.pal2nal and code.ctl into codeml executable file and run

codeml code.ctl


# Parse the output file
# I copied the output.txt into my dnds folder

python parse_codeml_output.py codeml.txt

```

work like a charm!


Now I will used my own data



```

#!/bin/bash

set -e

for i in *.faa

do

base=$(basename $i .faa)

/home/kplee/program/clustalo/clustalo-1.2.4-Ubuntu-x86_64 -i ${base}.faa -o ${base}.aln.faa

/home/kplee/program/pal2nal.v14/pal2nal.pl ${base}.aln.faa ${base}.fasta -output paml -nogap > ${base}.pal2nal

done



```


then mv all pal2nal file to the codeml path and set for gene one by one and get the results

work well


> The synonymous (dS), non-synonymous (dN) nucleotide substitution rates and the dN/dS ratio (ω) were calculated using the codeml in Paml4.7 (Yang, 2007) with branch test model (Nielsen and Yang, 1998). Before analyses, the clade of Sino-Vietnamese species were set as foreground clade, and the others were set as background clade. The options of the two analyses were set to seqtype = 1, NSites = 0, model = 0 or model = 2. The likelihood ratio test (LRT) was used to estimate the quality of each model (Yang and Nielsen, 2002).

from [here](https://www.frontiersin.org/articles/10.3389/fpls.2018.01989/full)





