# plastomics101



# Chloroplast




- ### [New  |   Completion of the Chloroplast Genomes of Five Chinese Juglans and Their Contribution to Chloroplast Phylogeny](https://www.frontiersin.org/articles/10.3389/fpls.2016.01955/full)





> The Juglans Cpg sequences from the finalized data set were aligned with MAFFT v7.0.0 (Katoh and Standley, 2013). The analyses were carried out based on the following three data sets: (1) the complete cp DNA sequences; (2) protein coding sequences; (3) the introns and spacers. 





- Bayesian analysis in R | [Babette github](https://github.com/ropensci/babette) | [Babette demo](https://methodsblog.com/2018/06/25/babette-beast2/) | [The error we make in Bayesian phylogenetics today](https://youtu.be/cp0F3W8KM0I)

- #### REF  [HERE](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-1004-2)


Just found today a call for submission from [IJMS](https://www.mdpi.com/journal/ijms/special_issues/Chloroplast3) and a nice paper [published](https://www.mdpi.com/1422-0067/20/18/4534/htm)




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


> Chloroplast genomes, in circular form, were annotated using GeSeq [50] with BLAT [51]
search of 85% identify for annotation of protein-coding genes, rRNAs and tRNAs. The
annotations of tRNAs were further confirmed by using tRNAscan-SE v.2.0.3 [52] and
ARAGORN v1.2.38 [53] by selection of default parameters of chloroplast genome. The
position of start and stop codons were further confirmed by manual visualisation and Blast
search with homologous genes of chloroplast genomes. Furthermore, the annotations of
tRNAscan-SE v.2.0.3 [52] were preferred as compared to ARAGORN v1.2.38 [53] due to
availability of its recently updated version. The five-column tab-delimited table of the
annotation were generated for submission to National Center for Biotechnology Information
(NCBI) through GB2sequin [54]. Fully annotated plastome circular diagrams were drawn by
OrganellarGenomeDRAW (OGDRAW) [55]. These genomes were submitted to GenBank of
National Center of Biotechnology Information (NCBI) under specific accession numbers
(Table 1).



Assuming that you have your alignment in a file named **"fasta.fas"** this should get you started



```python

from Bio import AlignIO

y=0
alignment = AlignIO.read("fasta.fas", "fasta")
for r in range(0,len(alignment[1].seq)):
    if alignment[0,r] != alignment[1,r]:
        if alignment[0,r] != "-" and alignment[1,r] != "-":
            y=y+1
            print r, alignment[0,r], alignment[1,r], y
        else:
            y=0



```


This returns position of SNP, nt in seq_A, nt in seq_B, running tally of the number of SNPs upstream of each indel


I tested this script in my server

First I align two chloroplast genome using mafft following this code


```bash

#---Convatenate both sequences
cat cp1.fasta cp2.fasta > cp1_cp2.fasta

#---Alignment
mafft --auto --thread 96 cp1_cp2.fata > cp1_cp2.mafft

#---Creating the python script
vi snp.py

#--Copy and past the python and run

python snp.py

```

I got this error


```bash

File "snp.py", line 8
    (print r, alignment[0,r], alignment[1,r], y)
           ^
SyntaxError: invalid syntax


```



So I found a solution [here](https://www.biostars.org/p/478864/)


Then I modified the script just a little


```python


from Bio import AlignIO

y=0
alignment = AlignIO.read("fasta.fas", "fasta")
for r in range(0,len(alignment[1].seq)):
    if alignment[0,r] != alignment[1,r]:
        if alignment[0,r] != "-" and alignment[1,r] != "-":
            y=y+1
            print (r, alignment[0,r], alignment[1,r], y)
        else:
            y=0



```


Note: The problem was that I should put in parenthesis all characters after `print` in line `8`.


So I tried again 

```bash

python snp.py 

```


and I got


```
10 a t 1
11 a g 2
92 t c 3
113 a t 4
161 a c 1
234 c t 2
243 c t 1
246 a t 2
247 a t 3
248 a t 4
249 a t 5
266 t c 6
555 g a 7
1053 t c 8
1161 a g 9
1284 g a 10
1526 c t 11
1611 a c 12
1924 c g 1
1953 a t 1
1973 t g 2
2062 c g 3
2076 a g 4
2098 g t 5
2101 c g 6
2112 a g 7
2153 t g 8
2250 g t 9
2285 t g 10
2300 a g 11
2437 c g 12
2570 c a 13
2703 a c 14
2719 c t 15
2769 a c 16
2797 c t 17
2808 g c 18
3021 t c 19
3050 g c 20
3077 c t 21
3192 g a 22
3193 a c 23
3261 g c 24
3301 t g 25
3393 g a 26
3400 c g 27
3521 g a 28
3547 g t 29
3621 a g 30
3967 t g 1
4020 a t 2
4028 t g 3
4147 t c 4
4155 a c 5
4194 t c 6
4212 t g 7
4400 a c 8
4465 g t 9
4581 a c 1
4587 g a 2
4683 c t 3
4717 t g 1
4741 c a 1
4840 g a 2
4841 a g 3
4843 g a 4
4844 a g 5
4846 t a 6
4848 g t 7
4849 a g 8
4858 g t 9
4860 t g 10
4880 g a 11
4916 g t 12
4925 g t 13
4995 a g 14
5202 a g 1
5589 a g 2
5592 t c 3
5608 g c 4
5612 g a 5
5655 c t 6
5773 a t 7
5852 c a 1
5884 c g 2
5925 c a 3
5984 g a 4
6111 g c 5
6112 a g 6
6122 g a 7
6283 t a 8
6366 g t 9
6424 c a 1
6480 t g 2
6536 t c 3
6608 t a 1
6662 t g 2
6723 t c 3
6862 c t 1
6893 t a 1
6964 a t 2
7004 c t 3
7025 a c 4
7026 a c 5
7155 g c 6
7310 t c 7
7380 t c 8
7435 g a 9
7526 a c 10
7900 c t 11
7912 g t 12
8098 a t 13
8272 t g 14
8304 c g 15
8806 c a 1
9011 a t 2
9083 a c 1
9114 g t 2
9115 a g 3
9116 a t 4
9118 g a 5
9119 a c 6
9120 c t 7
9121 t a 8
9122 a g 9
9124 t c 10
9126 a t 11
9127 c t 12
9128 a c 13
9162 t c 14
9181 g a 15
9183 g a 16
9187 t c 17
9238 a c 18
9315 a c 19
9368 g t 20
9555 a t 21
9710 g a 22
9865 g c 23
9972 c t 1
10024 c g 2
10129 t c 3
10234 c a 4
10311 a c 5
10469 t a 1
10717 g a 2
10817 a c 3
10821 a g 4
10844 a g 5
11064 t g 6
11076 a g 7
11379 c g 8
11394 c a 9
11442 t c 10
11458 c g 11
11768 t c 12
11961 a g 13
12198 c t 14
12578 t c 15
12665 a c 16
13037 a g 1
13085 a c 2
13557 a c 1
13575 g t 2
13645 c t 3
13687 t g 4
13750 t c 5
13751 g a 6
14074 c g 7
14102 t c 8
14206 a c 9
14207 g a 10
14345 c g 11
14483 t g 12
14535 t c 13
14548 c t 14
14567 a c 15
14574 a c 16
14578 g a 17
14646 a t 18
14817 g a 19
14970 t a 1
15381 a g 1
15792 a c 1
15872 g t 2
15928 c t 3
15983 g t 1
16085 g a 2
16352 a g 3
16499 g a 4
16634 t c 5
16740 t c 6
16741 c a 7
16761 c a 8
16906 t c 9
17285 c g 1
17361 g a 2
18044 t a 3
18381 g a 4
18855 g c 5
18981 g c 6
18987 c t 7
18988 g t 8
19106 c t 9
19434 a g 10
19814 a g 11
19838 g t 12
19979 c g 13
20006 t g 14
20165 a c 15
20212 g t 16
20414 g a 17
20564 c a 18
20845 t c 19
21017 t a 20
21182 c t 21
21417 a c 22
21971 g c 23
22098 t g 24
22668 g t 25
22840 g a 26
23013 t c 27
23458 a c 28
23459 c a 29
23601 c t 30
24256 c t 31
24988 c t 32
25079 t c 33
25093 t c 34
25193 t c 35
25329 a g 36
25455 c t 37
25567 c t 38
25772 a g 39
25943 c t 40
26462 a g 41
26975 t a 42
27143 c a 43
27458 c t 44
27547 t c 45
27553 a g 46
27683 a c 47
27698 t g 48
27711 t g 49
27842 g a 1
27968 t c 2
28052 g a 3
28249 c t 4
28366 a g 5
28464 a g 6
28667 g c 1
28690 a g 2
28768 a g 3
28816 g a 1
28872 g c 2
28902 g t 3
28906 c t 4
28945 g a 5
28974 c t 1
29008 t c 2
29028 c t 3
29069 g a 4
29114 t c 5
29207 g c 6
29289 c t 7
29356 t c 8
29538 a g 9
29643 t g 10
29741 a c 1
29791 t c 2
29808 g c 1
29906 g c 2
29954 g a 3
29964 a t 4
30040 a c 5
30148 c a 6
30248 g a 7
30253 a c 8
30436 t g 9
30437 c a 10
30484 a g 11
30816 a c 1
30892 g a 2
30897 c a 3
30939 g c 4
31039 t c 5
31042 a g 1
31045 g a 2
31048 a g 3
31189 g t 4
31362 a c 5
31575 t g 6
31610 t g 7
31719 t g 8
31733 c a 9
32012 t c 1
32015 g t 2
32031 a t 3
32211 t c 1
32264 c g 2
32350 g a 1
32360 t g 2
32461 g a 3
32922 t c 4
32994 g a 5
33013 g t 6
33170 g a 7
33216 t g 8
33338 g a 9
33388 a g 10
33525 g a 11
34188 a c 12
34479 t c 13
34597 c t 14
34612 g a 15
34742 c t 16
35125 g a 17
35970 c a 18
36280 t c 1
36487 c g 1
36852 t c 1
36930 a t 1
36931 a c 2
37122 c a 3
37171 g a 1

```

Great! That works perfectly!



> Furthermore, comparison of the cp genome of C. gileadensis with C. foliacea, C. wightii and B. sacra revealed 3,032, 8,787 and 5,120 SNPs as well as 3,580, 10,460 and 17,122 Indels respectively (Fig 4). Similarly, the C. foliacea cp genome also showed 8,194 and 5,182 SNPs while 7,632 and 17,970 Indel with C. wightii and B. sacra respectively. These Results shows that even the most conserved genome possesses some interspecific mutations which provides an important information in analyzing the phylogenetic and genetic diversity among the species












[First complete chloroplast genomics and comparative phylogenetic analysis of Commiphora gileadensis and C. foliacea: Myrrh producing trees](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0208511)


> Similarly, a custom Python script (https://www.biostars.org/p/119214/) and DnaSP 5.10.01 [42], were employed to determine single-nucleotide polymorphisms and Indel polymorphisms among the complete genomes respectively. 







> To infer the phylogenetic position of both C. gileadensis and C. foliacea within the order Sapindales, 24 cp genomes were downloaded from the NCBI database for analysis. Multiple alignments were performed using complete cp genomes based on conserved structures and gene order [41] and 4 different methods were used to make the trees: Bayesian-inference (MrBayes v3.1.2 [43]), maximum parsimony (PAUP-4.0[44]), maximum-likelihood and neighbour joining (MEGA7.01[33]) according to the methods of Asaf et al [39,45]. For Bayesian posterior probabilities (PP) in the BI analyses, the best substitution model GTR + G model was tested according to the Akaike information criterion (AIC) by jModelTest verion 2102. The Markov Chain Monto Carlo (MCMC) was run for 1,000,000 generations with 4 incrementally heated chains, starting from random trees and sampling 1 out of every 100 generations. The first 30% of trees were discarded as burn-in to estimate the value of posterior probabilities. Furthermore, parameters for the ML analysis were optimized with a BIONJ tree as the starting tree with 1000 bootstrap replicates using the Kimura 2-parameter model with gamma-distributed rate heterogeneity and invariant sites. MP was run using a heuristic search with 1000 random addition sequence replicates with the tree-bisection-reconnection (TBR) branch-swapping tree search criterion. In the second phylogenetic analysis, 72 shared genes from the cp genomes of the twenty-six members of order Sapindales, were aligned using ClustalX with default settings, followed by manual adjustment to preserve reading frames. Similarly, the above4 mentioned phylogenetic inference models were utilized to build trees using 72 concatenated genes, using the same setting as described above and suggested by Asaf et al [45].


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


[Question: How to interpret LRT < 0 in codeml branch-model based test?](https://www.biostars.org/p/166718/)

> I am running codeml on **orthogroup tree**


> The way I did is to set null model with fixed omega *(model=2, NSsites=0, fix_omega=1)* while branch-specific model by labeling branch of interest (foreground) in **tree file** *(model=2, NSsites=0, fix_omega=0)*.


> **To found out the significant difference on Kn/Ks values between foreground and background branches**, I calculate LRT by **LRT=2*(lnL1-lnL0)** and corresponding pvalues using [**dchisq function (df =1) in R**](https://rpubs.com/mpfoley73/460935#:~:text=R%20function%20dchisq(x%2C%20df,degrees%20of%20freedom%20is%20df%20.&text=tail)%20is%20the%20cumulative%20probability,TRUE%20for%20left%20tail%2C%20lower.).




[Question: How to specify a branch in the tree automatically for branch-site model codeml?](https://www.biostars.org/p/165578/)



> 4.5. Estimation of Evolutionary Rates
The nucleotide sequences of 80 protein-coding genes were extracted from five Pogostemon cp genomes. Each gene was codon-aligned using the L-INS-I method in MAFFT v7. Phylogenetically informative characters (PICs) were counted for each gene using a Python script. Given both codon and related protein alignments of each gene, average nonsynonymous (dN) and synonymous (dS) substitution rates were estimated using the *maximum likelihood method [55] with the F3 × 4 model implemented in the codeml program in PAML v4.9* [56]. In addition, protein-coding genes were assigned to nine functional groups according to the conventional classification. The genes within a functional group were concatenated for the above tests as well. The best ML tree based on PCGs was used as a constraint tree.




[Definitively the most comprehensive tutorial about dn/ds logic and practical calculation](https://evosite3d.blogspot.com/2011/09/identifying-positive-selection-in.html)

Theory

> The selective pressure in protein coding genes can be detected within the framework of comparative genomics. 
>The selective pressure is assumed to be defined by the ratio (ω) dN/dS. dS represents the synonymous rate (keeping  the amino acid) and  dN the non-synonymous rate (changing the amino acid). 
>In the absence of evolutionary pressure, the synonymous rate and the non-synonymous rate are equal, so the dN/dS ratio is equal to 1. Under purifying selection, natural selection prevents the replacement of amino acids, so the dN will be lower than the dS, and dN/dS < 1. And under positive selection, the replacement rate of amino acid is favoured by selection, and dN/dS > 1.


Practical theory 1


>CodeML and substitutions models: CodeML is a program from the package PAML, based on Maximum Likelihood, and developed in the lab of Ziheng Yang, University College London. It estimates various parameters (Ts/Tv, dN/dS, branch length) on the codon (nucleotide) alignment, based on a predefined topology (phylogenetic tree).


*My note: So a tree topology is a pre-requisite before selection pressure analysis. I need to know the tree topology of my taxa.


Practical theory 2

Different codon models exist in CodeML. 

> The model 0 estimates a unique dN/dS ratio for the whole alignment. *Not really interesting, except to define a null hypothesis to test against.*

Ah not really interesting ooohhhhhhhh!!!! Ah

> The branch models estimate different dN/dS among lineages [ie ASPM, a gene expressed in the brain of primates](https://www.genetics.org/content/genetics/165/4/2063/F2.large.jpg?width=800&height=600&carousel=1). 

My case because I want to assess pressure selection among different taxa...So I think I will use thia option...





> The site models estimate different dN/dS among sites (ie in the antigen-binding groove of the MHC). 

> The branch-site models estimate different dN/dS among sites and among branches. It can detect episodic evolution in protein sequences, as in the interactions between chains in the avian MHC. In my opinion, this is the most powerful application and this is the one used in the Sectome database (to which I contributed during my PhD).


What should I consider first ?

> First, we have to define the branch where we think that position could have occurred **. 


Note: In my case the foreground will be the branch were with my species of interest segregated. Like Dr Swati work. She wrote:


```

**The branch-site model was implemented by defining the Aster genus as foreground branch.**

```


the tree topology was [this](https://www.mdpi.com/plants/plants-09-00568/article_deploy/html/images/plants-09-00568-g009.png)


We will call this branch the "foreground branch" and all other branches in the tree will be the "background" branches. The background branches share the same distribution of ω = dN/dS value among sites, whereas different values can apply to the foreground branch. 

then

> To compute the likelihood value, two models are computed: a null model, in which the foreground branch may have different proportions of sites under neutral selection to the background (i.e. relaxed purifying selection), and an alternative model, in which the foreground branch may have a proportion of sites under positive selection.
As the alternative model is the general case, it is easier to present it first.

Theory about the brach-site model


```
 Four categories of sites are assumed in the branch-site model:

Sites with identical dN/dS in both foreground and background branches:
K0 : Proportion of sites that are under purifying selection (ω0 < 1) on both foreground and background branches.
K1 : Proportion of sites that are under neutral evolution (ω1 = 1) on both foreground and background branches.

Sites with different dN/dS between  foreground and background branches:
K2a: Proportion of sites that are under positive selection (ω2 ≥ 1) on the foreground branch and under purifying selection (ω0 < 1) on background branches.
K2b: Proportion of sites that are under positive selection (ω2 ≥ 1) on the foreground branch and under neutral evolution (ω1 = 1) on background branches.

For each category, we get the proportion of sites and the associated dN/dS values.

In the null model, the dN/dS (ω2) is fixed to 1:

Sites with identical dN/dS in both foreground and background branches:
K0 : Sites that are under purifying selection (ω0 < 1) on both foreground and background branches.
K1 : Sites that are under neutral evolution (ω1 = 1) on both foreground and background branches.

Sites with different dN/dS between  foreground and background branches:
K2a: Sites that are under neutral evolution (ω2 = 1) on the foreground branch and under purifying selection (ω0 < 1) on background branches.
K2b: Sites that are under neutral evolution (ω2 = 1) on the foreground branch and under neutral evolution (ω1 = 1) on background branches.


```

Ah here a very important part  after running codeml is to get Delta and the probability


> For each model, we get the log likelihood value (lnL1 for the alternative and lnL0 for the null models), from which we compute the Likelihood Ratio Test (LRT). The 2×(lnL1-lnL0) follows a χ² curve with degree of freedom of 1, so we can get a p-value for this LRT.




The rest of the practical tuto is [here](https://github.com/Yedomon/plastomics101/blob/main/Evosite3D_%20Identifying%20positive%20selection%20in%20genomic%20sequences.pdf)


One example of result presentation is [here](https://storage.googleapis.com/plos-corpus-prod/10.1371/journal.pone.0151023/1/pone.0151023.s011.pdf?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=wombat-sa%40plos-prod.iam.gserviceaccount.com%2F20210107%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20210107T082537Z&X-Goog-Expires=3600&X-Goog-SignedHeaders=host&X-Goog-Signature=4b8855e99bbe3223798fdbc89474d95aa9714cb5eb83832799e329d61a00536238143bc26a56ec41dcdeb2775f6f1d5f8a2dceed60c53bf848320337a39af6bf3a95d1bff28f02114f357238097e4a9fe0af02ac637a82d8a3ae386577fb5747a1073e5e77afc4cb5ed7fd32938653fcce21e2ae0ed8f0b8c4bec53cebcfbd45b49ccad0c54248a4295185ed1297b6185c435bdf40a43a080364c0a04b157fa46a674a01b7ddde86986f620a1c14099ac05906fc53292df886bb6f5e4e39b769874e6a649eecb116c68620e21bf989f639da066c5d6ec44a4034db4b6577d850275dd1d102f5e2bf123970f4b673060206d75da6fcc4ad4de4c7aa47969e19d4). Anotherone is [here]()




How to concatenate multiple sequence alignment file ?   I was seeking an answr and I found An interesting tutorial on phylogenetic tree construction pipeline [here](http://evomics.org/wp-content/uploads/2016/06/Align_Trim_Concat_Labs_Phylogenomics_2017.pdf). Definitively evomics is a very nice blog for genomics.

I found that `phyutility` is well used. How to download this java based tool? [Here](https://code.google.com/archive/p/phyutility/downloads).

How to install? Just download it and uncompress the file. Since it is a java based tool, just run it by typing: 

```

java -jar phyutility.jar -concat -in test.aln test2.aln -out testall.aln

```


an example from the tuto


```

phyutility -concat -in ~/workshop_materials/orthologs_concatenation/*.aligned.fa -out workshop_materials/orthologs_concatenation/concatenated_matrix.nexus


```

short explanation


> Concatenating alignments together is a necessary task but can often be a painful assignment, especially when the same taxa are not found in all alignments. Phyutility will concatenate fasta or nexus files. Sequences will be concatenated as long as they have the same name between files. Each input file is considered a gene. Missing taxa in each gene will be given gaps for each gene in which the taxon is missing. The output is nexus or fasta and each needs to have been aligned separately before running.


So a hint: `Make sure to name ideally the gene uniformely to facilitate the data matrix constitution and align eah genes orthologues separately before`

####  pHYLOGENETIC CONSTRUCTION

Prepare the files

For Adenocalymma_acutissimum.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Adenocalymma_acutissimum.gb \
-prefix Adenocalymma -seqPrefix ade -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Adenocalymma.cds_translation.fasta | awk '{gsub(/NC_037455.1;/,"_")}1' > Adenocalymma.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```

For Amphilophium_carolinae.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Amphilophium_carolinae.gb \
-prefix Amphilophium -seqPrefix amp -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Amphilophium.cds_translation.fasta | awk '{gsub(/NC_042933.1;/,"_")}1' > Amphilophium.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Anemopaegma_acutifolium.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Anemopaegma_acutifolium.gb \
-prefix Anemopaegma -seqPrefix ane -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Anemopaegma.cds_translation.fasta | awk '{gsub(/NC_037226.1;/,"_")}1' > Anemopaegma.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```



For Fraxinus_excelsior.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Fraxinus_excelsior.gb \
-prefix Fraxinus -seqPrefix fra -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Fraxinus.cds_translation.fasta | awk '{gsub(/NC_037446.1;/,"_")}1' > Fraxinus.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```




For Mentha_longifolia.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Mentha_longifolia.gb \
-prefix Mentha -seqPrefix men -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Mentha.cds_translation.fasta | awk '{gsub(/NC_032054.1;/,"_")}1' > Mentha.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```

For Oleae_europaea.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Oleae_europaea.gb \
-prefix Oleae -seqPrefix ole -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Oleae.cds_translation.fasta | awk '{gsub(/NC_013707.2;/,"_")}1' > Oleae.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Pedicularis_longiflora.gb




```bash

#--Extraction of CDS
gbseqextractor \
-f Pedicularis_longiflora.gb \
-prefix Pedicularis -seqPrefix plo -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Pedicularis.cds_translation.fasta | awk '{gsub(/NC_046852.1;/,"_")}1' > Pedicularis.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Perilla_citriodora.gb





```bash

#--Extraction of CDS
gbseqextractor \
-f Perilla_citriodora.gb \
-prefix Perilla -seqPrefix pci -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Perilla.cds_translation.fasta | awk '{gsub(/NC_030755.1;/,"_")}1' > Perilla.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```



For Salvia_splendens.gb



```bash

#--Extraction of CDS
gbseqextractor \
-f Salvia_splendens.gb \
-prefix Salvia -seqPrefix sal -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Salvia.cds_translation.fasta | awk '{gsub(/NC_050901.1;/,"_")}1' > Salvia.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Vitis_vinifera.gb



```bash

#--Extraction of CDS
gbseqextractor \
-f Vitis_vinifera.gb \
-prefix Vitis -seqPrefix vit -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Vitis.cds_translation.fasta | awk '{gsub(/NC_007957.1;/,"_")}1' > Vitis.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Ansanggae.gb



```bash

#--Extraction of CDS
gbseqextractor \
-f Sesamum_indicum_cv_Ansanggae.gb \
-prefix Ansanggae -seqPrefix ans -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Ansanggae.cds_translation.fasta | awk '{gsub(/NC_016433.2;/,"_")}1' > Ansanggae.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Goenbaek.gb



```bash

#--Extraction of CDS
gbseqextractor \
-f Goenbaek.gb \
-prefix Goenbaek -seqPrefix goe -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Goenbaek.cds_translation.fasta | awk '{gsub(/Sesamum_in;/,"_")}1' > Goenbaek.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Alatum.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f alatum.gb \
-prefix Alatum -seqPrefix ala -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Alatum.cds_translation.fasta | awk '{gsub(/Sesamum_al;/,"_")}1' > Alatum.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Angolense.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Angolense.gb \
-prefix Angolense -seqPrefix ang -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Angolense.cds_translation.fasta | awk '{gsub(/Sesamum_an;/,"_")}1' > Angolense.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Pedaloides.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Pedaloides.gb \
-prefix Pedaloides -seqPrefix ped -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Pedaloides.cds_translation.fasta | awk '{gsub(/Sesamum_pe;/,"_")}1' > Pedaloides.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Radiatum.gb

```bash

#--Extraction of CDS
gbseqextractor \
-f Radiatum.gb \
-prefix Radiatum -seqPrefix rad -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Radiatum.cds_translation.fasta | awk '{gsub(/Sesamum_ra;/,"_")}1' > Radiatum.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Avicennia_marina.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Avicennia_marina.gb \
-prefix Avicennia -seqPrefix avi -types CDS -cds_translation


#--Format the header in species_gene style.

cat  Avicennia.cds_translation.fasta | awk '{gsub(/NC_047414.1;/,"_")}1' > Avicennia.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```





For Andrographis_paniculata.gb


```bash

#--Extraction of CDS
gbseqextractor \
-f Andrographis_paniculata.gb \
-prefix Andrographis -seqPrefix and -types CDS -cds_translation


#--Format the header in species_gene style.

cat Andrographis.cds_translation.fasta | awk '{gsub(/NC_022451.2;/,"_")}1' > Andrographis.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```


For Aphelandra knappiae


```bash

#--Extraction of CDS
gbseqextractor \
-f Aphelandra_knappiae.gb \
-prefix Aphelandra -seqPrefix aph -types CDS -cds_translation


#--Format the header in species_gene style.

cat Aphelandra.cds_translation.fasta | awk '{gsub(/NC_041424.1;/,"_")}1' > Aphelandra.cds_translation_formatted.fasta

#--Explode and renamed with the corresponding header

cat * | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fasta")}
        print $0 > filename }'

```






Get the common genes using [Bioinformatics & Evolutionary Genomics venn diagram web tool](http://bioinformatics.psb.ugent.be/webtools/Venn/)



Got a total of 79 shared genes


```
atpH
psbK
ndhI
rpl20
matK
ndhF
atpF
psbF
petN
rps7
psbE
petB
rpl16
ycf2
petG
petA
rps12
rpl2
ndhH
clpP
rps3
rps2
atpB
ndhE
psaA
psbT
psbM
ycf1
infA
rpoB
rpl36
psbC
ndhD
rpoC1
atpE
accD
psbN
rps11
rps4
psaI
rps18
ndhC
psaJ
psbL
rpl33
ndhA
petL
rpl23
rps19
ndhG
ndhK
rpl32
rpl14
psaC
psbJ
rpl22
rps8
ndhB
psbH
rpoC2
ndhJ
rbcL
atpI
psbB
rpoA
ycf3
psbD
rps16
cemA
ccsA
psbZ
rps14
petD
atpA
rps15
psaB
psbA
psbI
ycf4

```



ycf15 is not present in Vitis vinifera from a set of: Rad,Ind,Ala,Ped,Ang,Vit,And,Aph.

Note: Need to change *clP1* (from Geseq) ---> to clP and *pbf1* (from Geseq) ---> to psbN
