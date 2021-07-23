# plastomics101

24 July 2021

My topic of the day was how to extract intron and intergenic specaer for the phylogenetic tree construction?


I got a good discussion on that [here](http://seqanswers.com/forums/archive/index.php/t-23949.html) or [here](http://seqanswers.com/forums/showthread.php?t=23949). It is retained that GFF-ex is very nice to do that job. Get the tool [here](http://bioinfo.icgeb.res.in/gff/gffdownloads/). How to install  and run [here](http://bioinfo.icgeb.res.in/gff/gffdownloads/README_GFF_v2.3.txt)


I will give a try soon.









Just found today 23 july 2021 a tool for plotting phylogenetic tree


[github](https://github.com/arklumpus/TreeViewer)  | [Time divergence](https://github-wiki-see.page/m/arklumpus/TreeViewer/wiki/Plotting-the-age-distributions-in-a-time%E2%80%90calibrated-tree)  | [Drawing taxon images](https://github-wiki-see.page/m/arklumpus/TreeViewer/wiki/Drawing-taxon-images) | [Drawing an alignment with the tree](https://github.com/arklumpus/TreeViewer/wiki/Drawing-an-alignment-with-the-tree)



### ALiTV installation for chloroplast genome comparison


I went to the [ALITV github page](https://github.com/AliTVTeam/AliTV-perl-interface/) for checking.


External Requirements:


```python

perl
cpanm
lastz


```

So let's install those requirements first.



```python

# Install perl and cpanm


sudo yum install perl-devel

sudo yum install cpanminus

sudo cpanm Bio::Perl # to install bioperl tools

sudo cpanm --force Bio::Perl # force failed installation module


# install lastz


## Download source code 


wget https://github.com/AliTVTeam/AliTV-perl-interface/archive/refs/heads/master.zip


## Unzip it

unzip lastz-master.zip # I did it on windows and there was a double folders inside (latsz-master/lastz-master/files) so I just grab the second lastz folder  

## Setting the installation path

LASTZ_INSTALL=/home/yedomon/utils/lastz-master/src

## Open the .bashrc


cd $HOME

vi .bashrc


## write

export PATH=/home/yedomon/utils/lastz-master/src:$PATH or export PATH=$PATH:/place/with/the/file

## DO

Esc + : + wq

## Then 

source .bashrc

## Then

cd /home/yedomon/utils/lastz-master/src
make
make install




```


the log file of make and make install


```python
[yedomon@localhost src]$ make
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' lastz.c -o lastz.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' infer_scores.c -o infer_scores.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' seeds.c -o seeds.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' pos_table.c -o pos_table.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' quantum.c -o quantum.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' seed_search.c -o seed_search.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' diag_hash.c -o diag_hash.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' chain.c -o chain.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' gapped_extend.c -o gapped_extend.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' tweener.c -o tweener.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' masking.c -o masking.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' segment.c -o segment.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' edit_script.c -o edit_script.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' identity_dist.c -o identity_dist.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' coverage_dist.c -o coverage_dist.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' continuity_dist.c -o continuity_dist.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' output.c -o output.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' gfa.c -o gfa.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' lav.c -o lav.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' axt.c -o axt.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' maf.c -o maf.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' cigar.c -o cigar.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' sam.c -o sam.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' genpaf.c -o genpaf.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' text_align.c -o text_align.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' align_diffs.c -o align_diffs.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' utilities.c -o utilities.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' dna_utilities.c -o dna_utilities.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' sequences.c -o sequences.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'I\' capsule.c -o capsule.o
gcc lastz.o infer_scores.o seeds.o pos_table.o quantum.o seed_search.o diag_hash.o chain.o gapped_extend.o tweener.o masking.o segment.o edit_script.o identity_dist.o coverage_dist.o continuity_dist.o output.o gfa.o lav.o axt.o maf.o cigar.o sam.o genpaf.o text_align.o align_diffs.o utilities.o dna_utilities.o sequences.o capsule.o -lm -o lastz
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' lastz.c -o lastz_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' infer_scores.c -o infer_scores_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' seeds.c -o seeds_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' pos_table.c -o pos_table_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' quantum.c -o quantum_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' seed_search.c -o seed_search_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' diag_hash.c -o diag_hash_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' chain.c -o chain_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' gapped_extend.c -o gapped_extend_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' tweener.c -o tweener_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' masking.c -o masking_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' segment.c -o segment_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' edit_script.c -o edit_script_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' identity_dist.c -o identity_dist_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' coverage_dist.c -o coverage_dist_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' continuity_dist.c -o continuity_dist_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' output.c -o output_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' gfa.c -o gfa_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' lav.c -o lav_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' axt.c -o axt_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' maf.c -o maf_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' cigar.c -o cigar_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' sam.c -o sam_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' genpaf.c -o genpaf_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' text_align.c -o text_align_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' align_diffs.c -o align_diffs_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' utilities.c -o utilities_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' dna_utilities.c -o dna_utilities_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' sequences.c -o sequences_D.o
gcc -c -O3 -Wall -Wextra -Werror -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DVERSION_MAJOR="\"1"\" -DVERSION_MINOR="\"04"\" -DVERSION_SUBMINOR="\"12"\" -DREVISION_DATE="\"20210209"\" -DSUBVERSION_REV="\""\" -Dscore_type=\'D\' capsule.c -o capsule_D.o
gcc lastz_D.o infer_scores_D.o seeds_D.o pos_table_D.o quantum_D.o seed_search_D.o diag_hash_D.o chain_D.o gapped_extend_D.o tweener_D.o masking_D.o segment_D.o edit_script_D.o identity_dist_D.o coverage_dist_D.o continuity_dist_D.o output_D.o gfa_D.o lav_D.o axt_D.o maf_D.o cigar_D.o sam_D.o genpaf_D.o text_align_D.o align_diffs_D.o utilities_D.o dna_utilities_D.o sequences_D.o capsule_D.o -lm -o lastz_D
[yedomon@localhost src]$ make install
install -d      /home/yedomon/lastz-distrib/bin
install lastz   /home/yedomon/lastz-distrib/bin
install lastz_D /home/yedomon/lastz-distrib/bin
[yedomon@localhost src]$


```


## Then



```python

make test

```



Output



```

[yedomon@localhost src]$ make test
[yedomon@localhost src]$


```

No error message came. So That is good. LASTZ is well installed.


##  Now Let's Install AliTv



```python


cd /home/yedomon/utils # Move to my software installation directory

git clone https://github.com/AliTVTeam/AliTV-perl-interface

cd AliTV-perl-interface/bin/


# Both executables are there
# -rwxrwxr-x. 1 yedomon yedomon 11355 Jul 22 10:18 alitv-filter.pl
# -rwxrwxr-x. 1 yedomon yedomon  7284 Jul 22 10:18 alitv.pl


# I will try to run it 

```python

[yedomon@localhost bin]$ ./alitv.pl --help
Can't locate FindBin/Real.pm in @INC (@INC contains: /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at ./alitv.pl line 6.
BEGIN failed--compilation aborted at ./alitv.pl line 6.

```


So I went back


```python

cd ../../

# Then


[yedomon@localhost utils]$ cpanm --installdeps .
!
! Can't write to /usr/local/share/perl5 and /usr/local/bin: Installing modules to /home/yedomon/perl5
! To turn off this warning, you have to do one of the following:
!   - run me as a root or with --sudo option (to install to /usr/local/share/perl5 and /usr/local/bin)
!   - Configure local::lib your existing local::lib in this shell to set PERL_MM_OPT etc.
!   - Install local::lib by running the following commands
!
!         cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
!
--> Working on .
Configuring /home/yedomon/utils ... N/A
! Configuring . failed. See /home/yedomon/.cpanm/work/1626917121.21810/build.log for details.


# I use sudo


[yedomon@localhost utils]$ sudo cpanm --installdeps .
[sudo] password for yedomon:
--> Working on .
Configuring /home/yedomon/utils ... N/A
! Configuring . failed. See /root/.cpanm/work/1626917196.22270/build.log for details.



# Then I use this 

[yedomon@localhost utils]$ cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
--> Working on local::lib
Fetching http://www.cpan.org/authors/id/H/HA/HAARG/local-lib-2.000024.tar.gz ... OK
Configuring local-lib-2.000024 ... OK
==> Found dependencies: ExtUtils::MakeMaker
--> Working on ExtUtils::MakeMaker
Fetching http://www.cpan.org/authors/id/B/BI/BINGOS/ExtUtils-MakeMaker-7.62.tar.gz ... OK
Configuring ExtUtils-MakeMaker-7.62 ... OK
Building and testing ExtUtils-MakeMaker-7.62 ... OK
Successfully installed ExtUtils-MakeMaker-7.62 (upgraded from 6.68)
Building and testing local-lib-2.000024 ... OK
Successfully installed local-lib-2.000024
2 distributions installed
Attempting to create directory /home/yedomon/perl5
[yedomon@localhost utils]$



Then I run


[yedomon@localhost bin]$ perl alitv.pl --help
Can't locate FindBin/Real.pm in @INC (@INC contains: /home/yedomon/perl5/lib/perl5/5.16.3/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5/5.16.3 /home/yedomon/perl5/lib/perl5/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5 /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at alitv.pl line 6.
BEGIN failed--compilation aborted at alitv.pl line 6.



[yedomon@localhost bin]$ sudo cpanm install FindBin::Real
[sudo] password for yedomon:
--> Working on install
Fetching http://www.cpan.org/authors/id/D/DA/DAGOLDEN/install-0.01.tar.gz ... OK
Configuring install-0.01 ... OK
Building and testing install-0.01 ... OK
Successfully installed install-0.01
--> Working on FindBin::Real
Fetching http://www.cpan.org/authors/id/S/ST/STRO/FindBin-Real-1.05.tar.gz ... OK
Configuring FindBin-Real-1.05 ... OK
Building and testing FindBin-Real-1.05 ... OK
Successfully installed FindBin-Real-1.05
2 distributions installed



[yedomon@localhost bin]$ perl alitv.pl --help
Can't locate Log/Log4perl.pm in @INC (@INC contains: /home/yedomon/utils/AliTV-perl-interface/bin/../lib /home/yedomon/perl5/lib/perl5/5.16.3/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5/5.16.3 /home/yedomon/perl5/lib/perl5/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5 /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Base.pm line 4.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Base.pm line 4.
Compilation failed in require at /usr/share/perl5/vendor_perl/parent.pm line 20.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV.pm line 7.
Compilation failed in require at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
Compilation failed in require at alitv.pl line 9.
BEGIN failed--compilation aborted at alitv.pl line 9.




[yedomon@localhost bin]$ sudo cpanm install Log::Log4perl
install is up to date. (0.01)
--> Working on Log::Log4perl
Fetching http://www.cpan.org/authors/id/E/ET/ETJ/Log-Log4perl-1.54.tar.gz ... OK
Configuring Log-Log4perl-1.54 ... OK
Building and testing Log-Log4perl-1.54 ... OK
Successfully installed Log-Log4perl-1.54
1 distribution installed



[yedomon@localhost bin]$ perl alitv.pl --help
Can't locate Hash/Merge.pm in @INC (@INC contains: /home/yedomon/utils/AliTV-perl-interface/bin/../lib /home/yedomon/perl5/lib/perl5/5.16.3/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5/5.16.3 /home/yedomon/perl5/lib/perl5/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5 /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV.pm line 12.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV.pm line 12.
Compilation failed in require at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
Compilation failed in require at alitv.pl line 9.
BEGIN failed--compilation aborted at alitv.pl line 9.



[yedomon@localhost bin]$ sudo cpanm install Hash::Merge
install is up to date. (0.01)
--> Working on Hash::Merge
Fetching http://www.cpan.org/authors/id/H/HE/HERMES/Hash-Merge-0.302.tar.gz ... OK
Configuring Hash-Merge-0.302 ... OK
==> Found dependencies: Clone::Choose
--> Working on Clone::Choose
Fetching http://www.cpan.org/authors/id/H/HE/HERMES/Clone-Choose-0.010.tar.gz ... OK
Configuring Clone-Choose-0.010 ... OK
==> Found dependencies: Test::Without::Module
--> Working on Test::Without::Module
Fetching http://www.cpan.org/authors/id/C/CO/CORION/Test-Without-Module-0.20.tar.gz ... OK
Configuring Test-Without-Module-0.20 ... OK
Building and testing Test-Without-Module-0.20 ... OK
Successfully installed Test-Without-Module-0.20
Building and testing Clone-Choose-0.010 ... OK
Successfully installed Clone-Choose-0.010
Building and testing Hash-Merge-0.302 ... OK
Successfully installed Hash-Merge-0.302
3 distributions installed



[yedomon@localhost bin]$ perl alitv.pl --help
Can't locate JSON.pm in @INC (@INC contains: /home/yedomon/utils/AliTV-perl-interface/bin/../lib /home/yedomon/perl5/lib/perl5/5.16.3/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5/5.16.3 /home/yedomon/perl5/lib/perl5/x86_64-linux-thread-multi /home/yedomon/perl5/lib/perl5 /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV.pm line 19.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV.pm line 19.
Compilation failed in require at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
BEGIN failed--compilation aborted at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 9.
Compilation failed in require at alitv.pl line 9.
BEGIN failed--compilation aborted at alitv.pl line 9.





[yedomon@localhost bin]$ sudo cpanm install JSON
install is up to date. (0.01)
--> Working on JSON
Fetching http://www.cpan.org/authors/id/I/IS/ISHIGAKI/JSON-4.03.tar.gz ... OK
Configuring JSON-4.03 ... OK
Building and testing JSON-4.03 ... OK
Successfully installed JSON-4.03
1 distribution installed




[yedomon@localhost bin]$ perl alitv.pl --help
Usage:
        # complex configuration via yml file
        alitv.pl [OPTIONS] options.yml

        # OR

        # easy alternative including the generation of a yml file
        alitv.pl [OPTIONS] *.fasta

Options:
    --project Project name
        The name of the project will be the given argument. If this
        parameter was not provided, one project name will be auto generated.
        This will be the base name for the log file, the yml file, and the
        output file. If a YML file is provided, this value will be
        overwritten by the basename of the YML file.

    --output Output file
        The name of the output file. If non is provided, the output file
        name will be based on the project name. If STDOUT should be used,
        please set the output filename to "-" via option "alitv.pl --output
        -".

    --logfile Log file
        The name of the log file. If non is provided, the log file name will
        be based on the project name.

    --overwrite or --force Overwrite existing project.yml or output.json
    files
        Default behaviour is to keep existing project yml and json files. If
        "--overwrite" or "--force" is specified, the files will be
        overwritten. Overwriting can be expicitly disabled by
        "--no-overwrite" or "--no-force" parameter.






```



In summary all those error meassage were due to the missing package, FindBin/Real, log/Log4perl, Hash/Merge and JSON
So to solve the problem, I did


```python
sudo cpanm install FindBin::Real
sudo cpanm install Log::Log4perl
sudo cpanm install Hash::Merge
sudo cpanm install JSON 
sudo cpanm install YAML

# and 
sudo cpanm --installdeps .

```


Then It works fine!

Now  I can run the tool with my own data


First I will create a folder containing all fasta, genbank files and tree file in netwick format


cd /home/yedomon/utils/AliTV-perl-interface/bin/
perl alitv.pl \
--project set9 \
/home/yedomon/utils/AliTV-perl-interface/data/chloro9/*.fasta


export PATH=/home/yedomon/utils/AliTV-perl-interface/bin:$PATH



perl bin/alitv.pl --project set9 --overwrite data/chloro9/set9.yml





```python


[yedomon@localhost AliTV-perl-interface]$ perl bin/alitv.pl --project set9 --overwrite data/chloro9/set9.yml

***********************************************************************
*                                                                     *
*  AliTV perl interface                                               *
*                                                                     *
***********************************************************************

You are using version v1.0.6.
INFO - Sequence names are longer then maximum allowed length (8 characters) and will be replaced by unique sequence names. Failing sequence names are: 'Ceratotheca_sesamoides', 'Ceratotheca_triloba', 'Sesamum_alatum', 'Sesamum_angolense', 'Sesamum_indicum_cv_Ansanggae', 'Sesamum_indicum_cv_Goenbaek', 'Sesamum_indicum_cv_Yuzhi11', 'Sesamum_pedaloides', 'Sesamum_radiatum'

FATAL - Unable to load alignment module 'AliTV::Alignment::lastz' at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 123.

Unable to load alignment module 'AliTV::Alignment::lastz' at /home/yedomon/utils/AliTV-perl-interface/bin/../lib/AliTV/Script.pm line 123.
[yedomon@localhost AliTV-perl-interface]$ sudo cpanm --installdeps .
[sudo] password for yedomon:
--> Working on .
Configuring /home/yedomon/utils/AliTV-perl-interface ... OK
==> Found dependencies: Bio::FeatureIO, Test::Warnings, Test::Exit, IPC::System::Simple
--> Working on Bio::FeatureIO
Fetching http://www.cpan.org/authors/id/C/CJ/CJFIELDS/Bio-FeatureIO-1.6.905.tar.gz ... OK
Configuring Bio-FeatureIO-1.6.905 ... OK
==> Found dependencies: XML::DOM::XPath, Tree::DAG_Node
--> Working on XML::DOM::XPath
Fetching http://www.cpan.org/authors/id/M/MI/MIROD/XML-DOM-XPath-0.14.tar.gz ... OK
Configuring XML-DOM-XPath-0.14 ... OK
==> Found dependencies: XML::XPathEngine
--> Working on XML::XPathEngine
Fetching http://www.cpan.org/authors/id/M/MI/MIROD/XML-XPathEngine-0.14.tar.gz ... OK
Configuring XML-XPathEngine-0.14 ... OK
Building and testing XML-XPathEngine-0.14 ... OK
Successfully installed XML-XPathEngine-0.14
Building and testing XML-DOM-XPath-0.14 ... OK
Successfully installed XML-DOM-XPath-0.14
--> Working on Tree::DAG_Node
Fetching http://www.cpan.org/authors/id/R/RS/RSAVAGE/Tree-DAG_Node-1.32.tgz ... OK
Configuring Tree-DAG_Node-1.32 ... OK
==> Found dependencies: File::Slurp::Tiny
--> Working on File::Slurp::Tiny
Fetching http://www.cpan.org/authors/id/L/LE/LEONT/File-Slurp-Tiny-0.004.tar.gz ... OK
Configuring File-Slurp-Tiny-0.004 ... OK
Building and testing File-Slurp-Tiny-0.004 ... OK
Successfully installed File-Slurp-Tiny-0.004
Building and testing Tree-DAG_Node-1.32 ... OK
Successfully installed Tree-DAG_Node-1.32
Building and testing Bio-FeatureIO-1.6.905 ... OK
Successfully installed Bio-FeatureIO-1.6.905
--> Working on Test::Warnings
Fetching http://www.cpan.org/authors/id/E/ET/ETHER/Test-Warnings-0.031.tar.gz ... OK
Configuring Test-Warnings-0.031 ... OK
Building and testing Test-Warnings-0.031 ... OK
Successfully installed Test-Warnings-0.031
--> Working on Test::Exit
Fetching http://www.cpan.org/authors/id/A/AR/ARODLAND/Test-Exit-0.11.tar.gz ... OK
Configuring Test-Exit-0.11 ... OK
==> Found dependencies: Return::MultiLevel
--> Working on Return::MultiLevel
Fetching http://www.cpan.org/authors/id/M/MA/MAUKE/Return-MultiLevel-0.05.tar.gz ... OK
Configuring Return-MultiLevel-0.05 ... OK
==> Found dependencies: Data::Munge
--> Working on Data::Munge
Fetching http://www.cpan.org/authors/id/M/MA/MAUKE/Data-Munge-0.097.tar.gz ... OK
Configuring Data-Munge-0.097 ... OK
Building and testing Data-Munge-0.097 ... OK
Successfully installed Data-Munge-0.097
Building and testing Return-MultiLevel-0.05 ... FAIL
! Installing Return::MultiLevel failed. See /root/.cpanm/work/1626926105.16802/build.log for details. Retry with --force to force install it.
! Installing the dependencies failed: Module 'Return::MultiLevel' is not installed
! Bailing out the installation for Test-Exit-0.11.
--> Working on IPC::System::Simple
Fetching http://www.cpan.org/authors/id/J/JK/JKEENAN/IPC-System-Simple-1.30.tar.gz ... OK
Configuring IPC-System-Simple-1.30 ... OK
Building and testing IPC-System-Simple-1.30 ... OK
Successfully installed IPC-System-Simple-1.30
! Installing the dependencies failed: Module 'Test::Exit' is not installed
! Bailing out the installation for AliTV-v1.0.6.
8 distributions installed
[yedomon@localhost AliTV-perl-interface]$ sudo cpanm --force --installdeps .
--> Working on .
Configuring /home/yedomon/utils/AliTV-perl-interface ... OK
==> Found dependencies: Test::Exit
--> Working on Test::Exit
Fetching http://www.cpan.org/authors/id/A/AR/ARODLAND/Test-Exit-0.11.tar.gz ... OK
Configuring Test-Exit-0.11 ... OK
==> Found dependencies: Return::MultiLevel
--> Working on Return::MultiLevel
Fetching http://www.cpan.org/authors/id/M/MA/MAUKE/Return-MultiLevel-0.05.tar.gz ... OK
Configuring Return-MultiLevel-0.05 ... OK
Building and testing Return-MultiLevel-0.05 ... FAIL
! Testing Return-MultiLevel-0.05 failed but installing it anyway.
Successfully installed Return-MultiLevel-0.05
Building and testing Test-Exit-0.11 ... OK
Successfully installed Test-Exit-0.11
<== Installed dependencies for .. Finishing.
2 distributions installed




```



```
[yedomon@localhost AliTV-perl-interface]$ perl bin/alitv.pl --project set9 --overwrite data/chloro9/set9.yml

***********************************************************************
*                                                                     *
*  AliTV perl interface                                               *
*                                                                     *
***********************************************************************

You are using version v1.0.6.
INFO - Sequence names are longer then maximum allowed length (8 characters) and will be replaced by unique sequence names. Failing sequence names are: 'Ceratotheca_sesamoides', 'Ceratotheca_triloba', 'Sesamum_alatum', 'Sesamum_angolense', 'Sesamum_indicum_cv_Ansanggae', 'Sesamum_indicum_cv_Goenbaek', 'Sesamum_indicum_cv_Yuzhi11', 'Sesamum_pedaloides', 'Sesamum_radiatum'

INFO - Created temporary folder at '/tmp/i9SBadbWJC'
INFO - Starting alignment generation... (45 alignments required)
INFO - Finished 1. alignment (44 to go; 2.22 % done)
INFO - Finished 2. alignment (43 to go; 4.44 % done)
INFO - Finished 3. alignment (42 to go; 6.67 % done)
INFO - Finished 4. alignment (41 to go; 8.89 % done)
INFO - Finished 5. alignment (40 to go; 11.11 % done)
INFO - Finished 6. alignment (39 to go; 13.33 % done)
INFO - Finished 7. alignment (38 to go; 15.56 % done)
INFO - Finished 8. alignment (37 to go; 17.78 % done)
INFO - Finished 9. alignment (36 to go; 20.00 % done)
INFO - Finished 10. alignment (35 to go; 22.22 % done)
INFO - Finished 11. alignment (34 to go; 24.44 % done)
INFO - Finished 12. alignment (33 to go; 26.67 % done)
INFO - Finished 13. alignment (32 to go; 28.89 % done)
INFO - Finished 14. alignment (31 to go; 31.11 % done)
INFO - Finished 15. alignment (30 to go; 33.33 % done)
INFO - Finished 16. alignment (29 to go; 35.56 % done)
INFO - Finished 17. alignment (28 to go; 37.78 % done)
INFO - Finished 18. alignment (27 to go; 40.00 % done)
INFO - Finished 19. alignment (26 to go; 42.22 % done)
INFO - Finished 20. alignment (25 to go; 44.44 % done)
INFO - Finished 21. alignment (24 to go; 46.67 % done)
INFO - Finished 22. alignment (23 to go; 48.89 % done)
INFO - Finished 23. alignment (22 to go; 51.11 % done)
INFO - Finished 24. alignment (21 to go; 53.33 % done)
INFO - Finished 25. alignment (20 to go; 55.56 % done)
INFO - Finished 26. alignment (19 to go; 57.78 % done)
INFO - Finished 27. alignment (18 to go; 60.00 % done)
INFO - Finished 28. alignment (17 to go; 62.22 % done)
INFO - Finished 29. alignment (16 to go; 64.44 % done)
INFO - Finished 30. alignment (15 to go; 66.67 % done)
INFO - Finished 31. alignment (14 to go; 68.89 % done)
INFO - Finished 32. alignment (13 to go; 71.11 % done)
INFO - Finished 33. alignment (12 to go; 73.33 % done)
INFO - Finished 34. alignment (11 to go; 75.56 % done)
INFO - Finished 35. alignment (10 to go; 77.78 % done)
INFO - Finished 36. alignment (9 to go; 80.00 % done)
INFO - Finished 37. alignment (8 to go; 82.22 % done)
INFO - Finished 38. alignment (7 to go; 84.44 % done)
INFO - Finished 39. alignment (6 to go; 86.67 % done)
INFO - Finished 40. alignment (5 to go; 88.89 % done)
INFO - Finished 41. alignment (4 to go; 91.11 % done)
INFO - Finished 42. alignment (3 to go; 93.33 % done)
INFO - Finished 43. alignment (2 to go; 95.56 % done)
INFO - Finished 44. alignment (1 to go; 97.78 % done)
INFO - Finished 45. alignment (0 to go; 100.00 % done)
INFO - Finished alignment generation
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - Deleting temporary folder
INFO - Number of bases (1378837) is longer than the maximum allowed (1000000), therefore sequences will be excluded from JSON file
INFO - Ticks will be drawn every 1000 basepair


```


Using 9 species is too much. Maximum is 8.

So I just keep one sesamum indicum | The reference one from Korea.

I will do the tree. So I need to prepare the files

```
[yedomon@localhost set_1]$ cp *tri* ../set_7
[yedomon@localhost set_1]$ cp *cse* ../set_7
[yedomon@localhost set_1]$ cp *ans* ../set_7
[yedomon@localhost set_1]$ cp *ang* ../set_7
[yedomon@localhost set_1]$ cp *ped* ../set_7
[yedomon@localhost set_1]$ cp *rad* ../set_7
[yedomon@localhost set_1]$ cp *ala* ../set_7
[yedomon@localhost set_1]$ cd ../set_7


```




Then make the tree



```python


#/bin/bash

set -e


cd /NABIC/HOME/yedomon1/plastomics/20.phylo/set7

for i in *.faa


do


### Multiple sequence alignment

source activate mafft_env

mafft --thread 32 --auto $i > $i.mafft

source deactivate mafft_env

### Alignment trimming

source activate trimal_env

trimal -automated1 -in $i.mafft -out $i.mafft.trimal

source deactivate trimal_env


done

##---Make the matrix

cat *.mafft.trimal | awk -v RS=">" -v FS="\n" -v OFS="\n" '{for(i=2; i<=NF; i++) {seq[$1] = seq[$1]$i}}; END {for(id in seq){print ">"id, seq[id]}}' > combined.awk.fasta

mkdir tree_construction

cd tree_construction

cp ../combined.awk.fasta .


source activate iqtree_env


iqtree -s combined.awk.fasta -nt AUTO -bb 1000 -alrt 1000 

source deactivate iqtree_env



## Bye!



bash run_phylo.sh &> log.phylo &




```




**VERY IMPORTANT Hint: To include the tree in AliTv the name of the chloroplast sequence should match those of the tree**





So I prepare my input.yml file and chloroplast data in one folder

My yaml file is like this



```r

---
alignment:
  parameter:
    - --format=maf
    - --noytrim
    - --ambiguous=iupac
    - --gapped
    - --strand=both
  program: lastz
genomes:
  - name: Ceratotheca_sesamoides
    sequence_files:
      - data/chloro7/Ceratotheca_sesamoides.fasta
  - name: Ceratotheca_triloba
    sequence_files:
      - data/chloro7/Ceratotheca_triloba.fasta
  - name: Sesamum_alatum
    sequence_files:
      - data/chloro7/Sesamum_alatum.fasta
  - name: Sesamum_angolense
    sequence_files:
      - data/chloro7/Sesamum_angolense.fasta
  - name: Sesamum_indicum_cv_Ansanggae
    sequence_files:
      - data/chloro7/Sesamum_indicum_cv_Ansanggae.fasta
  - name: Sesamum_pedaloides
    sequence_files:
      - data/chloro7/Sesamum_pedaloides.fasta
  - name: Sesamum_radiatum
    sequence_files:
      - data/chloro7/Sesamum_radiatum.fasta
tree:   data/chloro7/species.tree



```




then run



```python

cd /home/yedomon/utils/AliTV-perl-interface # positioning accordingly ....very important ...check the yaml file..That matches perfectely. AliTv can find the files

perl bin/alitv.pl --project set7 data/chloro7/set7.yml


```



log


```

***********************************************************************
*                                                                     *
*  AliTV perl interface                                               *
*                                                                     *
***********************************************************************

You are using version v1.0.6.
INFO - Sequence names are longer then maximum allowed length (8 characters) and will be replaced by unique sequence names. Failing sequence names are: 'Ceratotheca_sesamoides', 'Ceratotheca_triloba', 'Sesamum_alatum', 'Sesamum_angolense', 'Sesamum_indicum_cv_Ansanggae', 'Sesamum_pedaloides', 'Sesamum_radiatum'

INFO - Created temporary folder at '/tmp/HxNqI4umFD'
INFO - Starting alignment generation... (28 alignments required)
INFO - Finished 1. alignment (27 to go; 3.57 % done)
INFO - Finished 2. alignment (26 to go; 7.14 % done)
INFO - Finished 3. alignment (25 to go; 10.71 % done)
INFO - Finished 4. alignment (24 to go; 14.29 % done)
INFO - Finished 5. alignment (23 to go; 17.86 % done)
INFO - Finished 6. alignment (22 to go; 21.43 % done)
INFO - Finished 7. alignment (21 to go; 25.00 % done)
INFO - Finished 8. alignment (20 to go; 28.57 % done)
INFO - Finished 9. alignment (19 to go; 32.14 % done)
INFO - Finished 10. alignment (18 to go; 35.71 % done)
INFO - Finished 11. alignment (17 to go; 39.29 % done)
INFO - Finished 12. alignment (16 to go; 42.86 % done)
INFO - Finished 13. alignment (15 to go; 46.43 % done)
INFO - Finished 14. alignment (14 to go; 50.00 % done)
INFO - Finished 15. alignment (13 to go; 53.57 % done)
INFO - Finished 16. alignment (12 to go; 57.14 % done)
INFO - Finished 17. alignment (11 to go; 60.71 % done)
INFO - Finished 18. alignment (10 to go; 64.29 % done)
INFO - Finished 19. alignment (9 to go; 67.86 % done)
INFO - Finished 20. alignment (8 to go; 71.43 % done)
INFO - Finished 21. alignment (7 to go; 75.00 % done)
INFO - Finished 22. alignment (6 to go; 78.57 % done)
INFO - Finished 23. alignment (5 to go; 82.14 % done)
INFO - Finished 24. alignment (4 to go; 85.71 % done)
INFO - Finished 25. alignment (3 to go; 89.29 % done)
INFO - Finished 26. alignment (2 to go; 92.86 % done)
INFO - Finished 27. alignment (1 to go; 96.43 % done)
INFO - Finished 28. alignment (0 to go; 100.00 % done)
INFO - Finished alignment generation
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - MAF input file detected, but Bioperl is bugfree... Therefore, workaround for revcom issue is not activated
INFO - Deleting temporary folder
INFO - Number of bases (1072161) is longer than the maximum allowed (1000000), therefore sequences will be excluded from JSON file
INFO - Ticks will be drawn every 1000 basepair
[yedomon@localhost AliTV-perl-interface]$



```


I upload but it was empty. I tried the default dataset chloroset and try again and it works. So It seems that in case of bug just try the test dataset first.
















Nice inpiration 2021_01| [Comparative and phylogenetic analyses of the chloroplast genomes of species of Paeoniaceae](https://www.nature.com/articles/s41598-021-94137-0#Fig8)
Nice inpiration 2021_02 | [Chloroplast genome evolution in the Dracunculus clade (Aroideae, Araceae)](https://www.sciencedirect.com/science/article/pii/S0888754320320620?via%3Dihub=&s=03)



### Maximum Likelihood tree inference



### Bayesian tree inference 


For bayesian inference I found an online version of [MrBayes tool](http://www.phylogeny.fr/one_task.cgi?task_type=mrbayes). Amazing! So straithforward!  






#### Extract tRNA and rRNA


To complete this task I saw a wonderfull tool [available online](http://www.cbs.dtu.dk/services/FeatureExtract/) and also in [command line fashion](http://www.cbs.dtu.dk/services/FeatureExtract/download.php). 


Just upload select tRNA and get the fasta file. Very easy. Thanks to FeatureExtract developper.

But wait !!!! tRNA and rRNA are none-coding sequence. So you just need ATGC file! gbsextractor can do this task easily




Let's do it!

```python

gbseqextractor \
-f Ceratotheca_sesamoides.gb \
-prefix cse -types tRNA  


```


#### formating


```python

cat cse.trna.fasta | awk '{gsub(/Ceratothec;/,"")}1' > cse.trna.formatted.fa

```

#### find duplicated genes

awk '{if (x[$1]) { x_count[$1]++; print $0; if (x_count[$1] == 1) { print x[$1] } } x[$1] = $0}' cse.trna.formatted.fa | grep "^>" | sort 


#### count the number 


awk '{if (x[$1]) { x_count[$1]++; print $0; if (x_count[$1] == 1) { print x[$1] } } x[$1] = $0}' cse.trna.formatted.fa | grep "^>" | sort | wc -l


##### Explode




```python


#[yedomon@localhost 04_sesamum_pedaloides]$ mkdir tRNA
#[yedomon@localhost 04_sesamum_pedaloides]$ cp cse.trna.formatted.fa tRNA/
#[yedomon@localhost 04_sesamum_pedaloides]$ cd tRNA/


cat cse.trna.formatted.fa | awk '{ if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fa")} print $0 > filename }'

```




```

mkdir doubling

mv trnA-UGC.fa trnI-CAU.fa trnI-GAU.fa trnL-CAA.fa trnN-GUU.fa trnR-ACG.fa trnV-GAC.fa doubling

cd doubling


for i in *.fa


do


base=$(basename $i .fa)


awk '{if(NR>2) {print $0}}' $i > ${base}.unik.fa



done


```



reformat




```

mkdir unik


cp *.unik.fa unik


cd unik


for f in *.unik.fa; do 
        mv -- "$f" "${f%.unik.fa}.fa"
done

```


Then




```

cp *.fa /home/yedomon/data/01_ka_ks/09_ceratotheca_sesamoides/tRNA
cd /home/yedomon/data/01_ka_ks/09_ceratotheca_sesamoides/tRNA


for i in *.fa


do


base=$(basename $i .fa)


cat $i | awk '{sub(/>.*/,">cse"); print}' > ${base}.formatted.fa



done


mkdir formatted


cp *.formatted.fa formatted/

cd formatted/


grep "^>" *.fa | wc -l

grep "^>" *.fa 


```























##### Extract the CDS proteins gene


```python

gbseqextractor \
-f wild_ghana_GeSeqJob-20210701-112928_wild_ghana_GenBank.gb \
-prefix gha -types CDS -cds_translation 


```



##### Format


```python

cat gha.cds_translation.fasta | awk '{gsub(/wild_ghana;/,"")}1' > gha.cds_translation_formatted.faa

```

#### find duplicated genes

awk '{if (x[$1]) { x_count[$1]++; print $0; if (x_count[$1] == 1) { print x[$1] } } x[$1] = $0}' gha.cds_translation_formatted.faa | grep "^>" | sort 


#### count the number 


awk '{if (x[$1]) { x_count[$1]++; print $0; if (x_count[$1] == 1) { print x[$1] } } x[$1] = $0}' gha.cds_translation_formatted.faa | grep "^>" | sort | wc -l

Note : divided by 2 later of course



##### Explode




```python


#[yedomon@localhost 04_sesamum_pedaloides]$ mkdir faa
#[yedomon@localhost 04_sesamum_pedaloides]$ cp ped.cds_translation_formatted.faa faa/
#[yedomon@localhost 04_sesamum_pedaloides]$ cd faa/


cat gha.cds_translation_formatted.faa | awk '{ if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")} print $0 > filename }'

```



# vERIFICATION OF DOUBLING IN EACH GENE







Tips:

During the annotation process make sure you get the translation of rps12 gene. To get this use reference as third part or include multiple annotator together. 
Check the genebank file in notebook and Ctrl + H to see if rps12 was translated. Use gbsextractor to get CDS and use my awk script to explode then check some doubling manually.




fOR DOUDLING REMOVING DO

```python


awk '{if(NR>2) {print $0}}' accD.faa  # remove lines 1 and 2 of accD gene file


```




For looping


```

mkdir doubling

mv accD.faa atpF.faa clpP1.faa ndhB.faa ndhK.faa pafI.faa psbC.faa \
rpl2.faa rpl23.faa rpoC2.faa rps12.faa rps16.faa rps7.faa ycf1.faa ycf15.faa ycf2.faa doubling


cd doubling



for i in *.faa


do


base=$(basename $i .faa)


awk '{if(NR>2) {print $0}}' $i > ${base}.unik.faa



done


```



reformat




```

mkdir unik


cp *.unik.faa unik


cd unik




for f in *.unik.faa; do 
        mv -- "$f" "${f%.unik.faa}.faa"
done

```




Then




```

cp *.faa /home/yedomon/data/01_ka_ks/14_wild_ghana/faa
cd /home/yedomon/data/01_ka_ks/14_wild_ghana/faa


for i in *.faa


do


base=$(basename $i .faa)


cat $i | awk '{sub(/>.*/,">gha"); print}' > ${base}.formatted.faa



done


mkdir formatted


cp *.formatted.faa formatted/

cd formatted/


grep "^>" *.faa | wc -l

grep "^>" *.faa 








```




I got this [How do I make the vi editor display or hide line numbers?](https://kb.iu.edu/d/afcx) in order to see the line number for deletion .

and this [How to remove lines with specific line number from text file with awk or sed in Linux/unix](https://www.linuxcommands.site/linux-text-processing-commands/linux-awk-command/how-to-remove-specific-line-numbers-from-a-text-file-use-awk-sed-in-linux-unix/) for removing quickly the doubling

```python

grep "^>" *.faa 


```


Remove manually dougling gene with vi  then ...>



# How to format a set of fatsa file by replace all character begining by  ">" by ">a_single_name (species name). Usefull for tree contruction






The synthax is 


```python


cat test.faa | awk '{sub(/>.*/,">cse"); print}' > test.out.faa # remplacer tout ce qui vient en commencany > par >cse

```




Since I have multiple fileS, I define the following code:





```python


#!/bin/bash

set -e


for i in *.faa


do


base=$(basename $i .faa)


cat $i | awk '{sub(/>.*/,">cse"); print}' > ${base}.formatted.faa



done



```



Verification


```python

grep "^>" *.faa

```

Output


```python

accD.formatted.faa:>cse
atpA.formatted.faa:>cse
atpB.formatted.faa:>cse



```










Now I need to rename each file by including the species name in order to easely concatenate later for the tree construction


```python

#!/bin/bash

set -e

for f in *.faa; do 
        mv -- "$f" "${f%.faa}.ctri.faa"
done


```



Work nicely

Note to avoid to do this just do




```python



#!/bin/bash

set -e


for i in *.faa


do


base=$(basename $i .faa)


cat $i | awk '{sub(/>.*/,">cse"); print}' > formatted/${base}.formatted.cse.faa



done



```


tree based on ycf1 gene only

I face an issue need to transform ycf1.formatted.faa to ycf1.cse.formatted.faa


```python

for f in *.formatted.faa; do 
        mv -- "$f" "${f%.formatted.faa}.gha.formatted.faa"
done


cp ycf1.gha.formatted.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo

```

The path of each formatted gene


```python

cd /home/yedomon/data/01_ka_ks/09_ceratotheca_sesamoides/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/10_ceratotheca_triloba/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/02_sesamum_alatum/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/03_sesamum_angolense/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/04_sesamum_pedaloides/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/05_sesamum_radiatum/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/01_sesamum_indicum_goenbaek/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/11_sesamum_indicum_yuzhi11/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
cd /home/yedomon/data/01_ka_ks/12_sesamum_indicum_ansanggae/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1




```



prepare the file for tree set 1 



```

cd /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_1
mkdir formatted
cat accD.* > formatted/accD.ready.faa
cat atpA.* > formatted/atpA.ready.faa
cat atpB.* > formatted/atpB.ready.faa
cat atpE.* > formatted/atpE.ready.faa
cat atpF.* > formatted/atpF.ready.faa
cat atpH.* > formatted/atpH.ready.faa
cat atpI.* > formatted/atpI.ready.faa
cat ccsA.* > formatted/ccsA.ready.faa
cat cemA.* > formatted/cemA.ready.faa
cat clpP1.* > formatted/clpP1.ready.faa
cat infA.* > formatted/infA.ready.faa
cat matK.* > formatted/matK.ready.faa
cat ndhA.* > formatted/ndhA.ready.faa
cat ndhB.* > formatted/ndhB.ready.faa
cat ndhC.* > formatted/ndhC.ready.faa
cat ndhD.* > formatted/ndhD.ready.faa
cat ndhE.* > formatted/ndhE.ready.faa
cat ndhF.* > formatted/ndhF.ready.faa
cat ndhG.* > formatted/ndhG.ready.faa
cat ndhH.* > formatted/ndhH.ready.faa
cat ndhI.* > formatted/ndhI.ready.faa
cat ndhJ.* > formatted/ndhJ.ready.faa
cat ndhK.* > formatted/ndhK.ready.faa
cat pafI.* > formatted/pafI.ready.faa
cat pafII.* > formatted/pafII.ready.faa
cat pbf1.* > formatted/pbf1.ready.faa
cat petA.* > formatted/petA.ready.faa
cat petB.* > formatted/petB.ready.faa
cat petD.* > formatted/petD.ready.faa
cat petG.* > formatted/petG.ready.faa
cat petL.* > formatted/petL.ready.faa
cat petN.* > formatted/petN.ready.faa
cat psaA.* > formatted/psaA.ready.faa
cat psaB.* > formatted/psaB.ready.faa
cat psaC.* > formatted/psaC.ready.faa
cat psaI.* > formatted/psaI.ready.faa
cat psaJ.* > formatted/psaJ.ready.faa
cat psbA.* > formatted/psbA.ready.faa
cat psbB.* > formatted/psbB.ready.faa
cat psbC.* > formatted/psbC.ready.faa
cat psbD.* > formatted/psbD.ready.faa
cat psbE.* > formatted/psbE.ready.faa
cat psbF.* > formatted/psbF.ready.faa
cat psbH.* > formatted/psbH.ready.faa
cat psbI.* > formatted/psbI.ready.faa
cat psbJ.* > formatted/psbJ.ready.faa
cat psbK.* > formatted/psbK.ready.faa
cat psbL.* > formatted/psbL.ready.faa
cat psbM.* > formatted/psbM.ready.faa
cat psbT.* > formatted/psbT.ready.faa
cat psbZ.* > formatted/psbZ.ready.faa
cat rbcL.* > formatted/rbcL.ready.faa
cat rpl14.* > formatted/rpl14.ready.faa
cat rpl16.* > formatted/rpl16.ready.faa
cat rpl20.* > formatted/rpl20.ready.faa
cat rpl22.* > formatted/rpl22.ready.faa
cat rpl23.* > formatted/rpl23.ready.faa
cat rpl2.* > formatted/rpl2.ready.faa
cat rpl32.* > formatted/rpl32.ready.faa
cat rpl33.* > formatted/rpl33.ready.faa
cat rpl36.* > formatted/rpl36.ready.faa
cat rpoA.* > formatted/rpoA.ready.faa
cat rpoB.* > formatted/rpoB.ready.faa
cat rpoC1.* > formatted/rpoC1.ready.faa
cat rpoC2.* > formatted/rpoC2.ready.faa
cat rps11.* > formatted/rps11.ready.faa
cat rps12.* > formatted/rps12.ready.faa
cat rps14.* > formatted/rps14.ready.faa
cat rps15.* > formatted/rps15.ready.faa
cat rps16.* > formatted/rps16.ready.faa
cat rps18.* > formatted/rps18.ready.faa
cat rps19.* > formatted/rps19.ready.faa
cat rps2.* > formatted/rps2.ready.faa
cat rps3.* > formatted/rps3.ready.faa
cat rps4.* > formatted/rps4.ready.faa
cat rps7.* > formatted/rps7.ready.faa
cat rps8.* > formatted/rps8.ready.faa
cat ycf15.* > formatted/ycf15.ready.faa
cat ycf1.* > formatted/ycf1.ready.faa
cat ycf2.* > formatted/ycf2.ready.faa


```





```python


# Use this awk code to merge multiple sequence alignment into one


cat *.mafft.trimal | awk -v RS=">" -v FS="\n" -v OFS="\n" '{for(i=2; i<=NF; i++) {seq[$1] = seq[$1]$i}}; END {for(id in seq){print ">"id, seq[id]}}' > combined.fasta


```















Set 2 include this



```python
cd /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/09_ceratotheca_sesamoides/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/10_ceratotheca_triloba/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/02_sesamum_alatum/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/03_sesamum_angolense/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/04_sesamum_pedaloides/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/05_sesamum_radiatum/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/01_sesamum_indicum_goenbaek/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/11_sesamum_indicum_yuzhi11/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/12_sesamum_indicum_ansanggae/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/13_sesamum_schinzianum/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/14_wild_ghana/faa/formatted/
cp *.faa /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
cd /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
ls *.faa | wc -l

```



concatenate genes for the tree construction



```

cd /home/yedomon/data/01_ka_ks/15_files_for_phylo/set_2
mkdir formatted
cat accD.* > formatted/accD.ready.faa
cat atpA.* > formatted/atpA.ready.faa
cat atpB.* > formatted/atpB.ready.faa
cat atpE.* > formatted/atpE.ready.faa
cat atpF.* > formatted/atpF.ready.faa
cat atpH.* > formatted/atpH.ready.faa
cat atpI.* > formatted/atpI.ready.faa
cat ccsA.* > formatted/ccsA.ready.faa
cat cemA.* > formatted/cemA.ready.faa
cat clpP1.* > formatted/clpP1.ready.faa
cat infA.* > formatted/infA.ready.faa
cat matK.* > formatted/matK.ready.faa
cat ndhA.* > formatted/ndhA.ready.faa
cat ndhB.* > formatted/ndhB.ready.faa
cat ndhC.* > formatted/ndhC.ready.faa
cat ndhD.* > formatted/ndhD.ready.faa
cat ndhE.* > formatted/ndhE.ready.faa
cat ndhF.* > formatted/ndhF.ready.faa
cat ndhG.* > formatted/ndhG.ready.faa
cat ndhH.* > formatted/ndhH.ready.faa
cat ndhI.* > formatted/ndhI.ready.faa
cat ndhJ.* > formatted/ndhJ.ready.faa
cat ndhK.* > formatted/ndhK.ready.faa
cat pafI.* > formatted/pafI.ready.faa
cat pafII.* > formatted/pafII.ready.faa
cat pbf1.* > formatted/pbf1.ready.faa
cat petA.* > formatted/petA.ready.faa
cat petB.* > formatted/petB.ready.faa
cat petD.* > formatted/petD.ready.faa
cat petG.* > formatted/petG.ready.faa
cat petL.* > formatted/petL.ready.faa
cat petN.* > formatted/petN.ready.faa
cat psaA.* > formatted/psaA.ready.faa
cat psaB.* > formatted/psaB.ready.faa
cat psaC.* > formatted/psaC.ready.faa
cat psaI.* > formatted/psaI.ready.faa
cat psaJ.* > formatted/psaJ.ready.faa
cat psbA.* > formatted/psbA.ready.faa
cat psbB.* > formatted/psbB.ready.faa
cat psbC.* > formatted/psbC.ready.faa
cat psbD.* > formatted/psbD.ready.faa
cat psbE.* > formatted/psbE.ready.faa
cat psbF.* > formatted/psbF.ready.faa
cat psbH.* > formatted/psbH.ready.faa
cat psbI.* > formatted/psbI.ready.faa
cat psbJ.* > formatted/psbJ.ready.faa
cat psbK.* > formatted/psbK.ready.faa
cat psbL.* > formatted/psbL.ready.faa
cat psbM.* > formatted/psbM.ready.faa
cat psbT.* > formatted/psbT.ready.faa
cat psbZ.* > formatted/psbZ.ready.faa
cat rbcL.* > formatted/rbcL.ready.faa
cat rpl14.* > formatted/rpl14.ready.faa
cat rpl16.* > formatted/rpl16.ready.faa
cat rpl20.* > formatted/rpl20.ready.faa
cat rpl22.* > formatted/rpl22.ready.faa
cat rpl23.* > formatted/rpl23.ready.faa
cat rpl2.* > formatted/rpl2.ready.faa
cat rpl32.* > formatted/rpl32.ready.faa
cat rpl33.* > formatted/rpl33.ready.faa
cat rpl36.* > formatted/rpl36.ready.faa
cat rpoA.* > formatted/rpoA.ready.faa
cat rpoB.* > formatted/rpoB.ready.faa
cat rpoC1.* > formatted/rpoC1.ready.faa
cat rpoC2.* > formatted/rpoC2.ready.faa
cat rps11.* > formatted/rps11.ready.faa
cat rps12.* > formatted/rps12.ready.faa
cat rps14.* > formatted/rps14.ready.faa
cat rps15.* > formatted/rps15.ready.faa
cat rps16.* > formatted/rps16.ready.faa
cat rps18.* > formatted/rps18.ready.faa
cat rps19.* > formatted/rps19.ready.faa
cat rps2.* > formatted/rps2.ready.faa
cat rps3.* > formatted/rps3.ready.faa
cat rps4.* > formatted/rps4.ready.faa
cat rps7.* > formatted/rps7.ready.faa
cat rps8.* > formatted/rps8.ready.faa
cat ycf15.* > formatted/ycf15.ready.faa
cat ycf1.* > formatted/ycf1.ready.faa
cat ycf2.* > formatted/ycf2.ready.faa


```


























# ycf1 gene DNA barcoding

- [ycf1, the most promising plastid DNA barcode of land plants](https://www.nature.com/articles/srep08348#Sec12)
- [ycf1-ndhF genes, the most promising plastid genomic barcode, sheds light on phylogeny at low taxonomic levels in Prunus persica](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7427673/)
- [A chloroplast genomic strategy for designing taxon specific DNA mini-barcodes: a case study on ginsengs](https://bmcgenomdata.biomedcentral.com/articles/10.1186/s12863-014-0138-z#Sec8)
- [Chloroplast genome of white wild chrysanthemum, Dendranthema sp. K247003, as genetic barcode](http://koreascience.or.kr/article/JAKO201525550547918.pdf)






/home/yedomon/utils/mafft-7.475-with-extensions/core/mafft all_ycf1.fna > all_ycf1.mafft

Ensuite je suis allez vers Bioedit pour visualiser where il y a des points communs.

Ensuite j'ai construit un fichier consensus issu de l'alignment avec [emboss cons](https://www.ebi.ac.uk/Tools/msa/emboss_cons/) puis avec [primer 3 online](https://primer3.ut.ee/) j'ai fait le design des marqueurs em mettant comme settings  

`targets : 4950,350`.  J'ai pu avoir un bon resultat en termes de la taille du marqueur (environ 500 bp). C'est deja cool je crois.








# nucleotide diversity analysis 


all codes and figure are [here](https://github.com/Yedomon/plastomics101/tree/main/nucleotide_diversity)







# mVista analysis


To plot mVista plot please do:


- Use the gff file 
- filter by selecting gene, CDS, tRNA, strand, rRNA
- keep gene name intact by avoiding additionnal info like -2 or something else
- use filter fonction to make < and > symbole following strand + or -
- select a new column and use concatenate fonction to bring requeried field following



```


< 106481 116661 gene1 
106481 106497 utr 
107983 108069 exon 
109884 110033 exon 
111865 112023 exon 

> 39424 42368 gene2 
39424 39820 exon 
41401 42368 exon

> 77817 81088 gene3
77817 78820 utr 
79538 80107 exon 


```


- gene will be the name of the gene
- utr will be tRNA and rRNA
- exon will be CDS


- then change gene name into utr and exon accordingly and remove < and > sign also just using filter function 




that's it.






Tip: Later if you have n sequences to compare, enter n+1 and double the first one in order to get your four sequences fully. 



# IRSCOPE analysis


Some key points to successfully make Chloroplast junction graph with [IRSCOPE R shiny tool](https://irscope.shinyapps.io/irapp/)



- Use the gff annotation from [chloe](https://chloe.plantenergy.edu.au/annotate.html) or [Geseq](https://chlorobox.mpimp-golm.mpg.de/geseq.html). 
- Change the extension into .txt then copy and paste in Excel. 
- Filter only by gene. 
- Arrange the table as follow: start | end | gene name | strand. 
- Delete IR annotation. 
- Using chloe gff file is more flexible than geseq because  of duplication of certain gene by Geseq tool
- save as tab delimitated file
- Make sure to arrange the fasta file as follow: LLS-IRb-SSC-IRb. Very important to run easily
- prepare the coordinates of junctions by doing real start of IRB-1basepair, real end of IRB, real start of IRA-1,real end of IRA
- Go to `https://irscope.shinyapps.io/irapp/` then select upload data > Manual and upload the gff.txt, fasta and write down the coordinnates. Dependeing of the number of species, the process will take less than 10s.

















### [Complete chloroplast genome of Myracrodruon urundeuva and its phylogenetics relationships in Anacardiaceae family](https://link.springer.com/article/10.1007/s12298-021-00989-1)

> The strategies of plants against the adversities of environment may lead sequence evolution of cp genomes, with some genes under positive selection in numerous plant lineages (Rockenbach et al. 2016; Wu et al. 2020). The selective pressure can be measured as a ratio (ω) of the nonsynonymous substitution rate (dN) to the synonymous substitutions rate (dS) and using the site-model, we can assess the variability at different sites of a gene by comparing different models of evolution, such nearly neutral against selection by a LRT (Nielsen and Yang 1998; Jeffares et al. 2014; Wu et al. 2020). We did not detect evidence of branch-site selection, which reflects that M. urundeuva is not evolving faster than the other species in the family. On the other hand, significant evidence from site-model selection indicates that there are nine genes which are under positive selection, with the most genes under purifying selection in Anacardiaceae family. Several plastid genes were reported to be under selective pressure from different lineages of angiosperms, such clpP and accD (Erixon and Oxelman 2008; Rockenbach et al. 2016). In our study, we found that clpP gene has at least three codons under positive selection, but none related to accD gene. Furthermore, approximately 45% of genes from photosystem are under positive selection (ndhB, ndhD, rbcL and petD). In Chrysosplenium and Oryza genera, several genes related to photosynthesis (such rbcL and psbB) are associated to the environment due to high levels of UV radiation, which may lead to DNA damages and mutations, resulting in high mutation levels (Gao et al. 2019b; Wu et al. 2020). In fact, rbcL was proposed as a DNA barcoding marker in association with matK from Consortium for the Barcode of Life (CBOL) Plant Working Group (CBOL 2009). Dong et al. (2015) also reported high levels of discrimination success in plants based in rbcL and matK markers, and also proposed ycf1 as a new universal DNA barcoding marker, but in this work, the LRT revealed that ycf1 was not significant in the family. Thus, in addition to the genes already proposed as discriminating species in the literature, there is a need for intraspecific investigation of these positively selected genes identified in this work at the population level to assess their potential as markers for use in species identification


## Ka ks analysis

[paml_discussion group](https://groups.google.com/g/pamlsoftware)

[Tutorial protocol.io](https://www.protocols.io/view/introduction-to-calculating-dn-ds-ratios-with-code-qhwdt7e?step=4)

[Tutorial for branch model site](https://evosite3d.blogspot.com/2011/09/identifying-positive-selection-in.html) 


[Tutorial for site model](https://evosite3d.blogspot.com/2016/06/detecting-pervasive-positive-selection.html)

[Utils site](https://github.com/romainstuder/evosite3d)



### Prepare the datasets | nucleotide fasta and protein translated fasta files


#### Ceratotheca sesamoides



##### Extract the CDS proteins gene


```python


gbseqextractor \
-f ansanggae_GeSeqJob-20210704-200810_Sesamum_indicum_cv_Ansanggae_GenBank.gb \
-prefix ansan -types CDS -cds_translation 



```

##### Format

```python

cat ansan.cds.fasta | awk '{gsub(/Sesamum_in;/,"")}1' > ansan.cds_formatted.fna

```



###### Explode




```python

cat cse.cds_translation_formatted.faa | awk '{ if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")} print $0 > filename }'

```


#### Sesamum indicum faa and fna extraction


```python


gbseqextractor \
-f Sesamum_indicum.gb \
-prefix ind -types CDS -cds_translation 



```




### formating the gene head names
cat  ind.cds.fasta | awk '{gsub(/Sesamum_in;/,"")}1' > ind.cds.formatted.fasta

cat  ind.cds_translation.fasta | awk '{gsub(/Sesamum_in;/,"")}1' > ind.cds_translation.formatted.fasta


#### Explode the sequences

cat ind.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat ind.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


#### Sesamum alatum faa and fna extraction

gbseqextractor \
-f Sesamum_alatum.gb \
-prefix ala -types CDS -cds_translation 

cat  ala.cds.fasta | awk '{gsub(/Sesamum_al;/,"")}1' > ala.cds.formatted.fasta

cat  ala.cds_translation.fasta | awk '{gsub(/Sesamum_al;/,"")}1' > ala.cds_translation.formatted.fasta

cat ala.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat ala.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 



#### Sesamum angolense faa and fna extraction

gbseqextractor \
-f Sesamum_angolense.gb \
-prefix ang -types CDS -cds_translation 

cat  ang.cds.fasta | awk '{gsub(/Sesamum_an;/,"")}1' > ang.cds.formatted.fasta

cat ang.cds_translation.fasta | awk '{gsub(/Sesamum_an;/,"")}1' > ang.cds_translation.formatted.fasta

cat ang.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat ang.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 



#### Sesamum pedaloides faa and fna extraction

gbseqextractor \
-f Sesamum_pedaloides.gb \
-prefix ped -types CDS -cds_translation 

cat ped.cds.fasta | awk '{gsub(/Sesamum_pe;/,"")}1' > ped.cds.formatted.fasta

cat ped.cds_translation.fasta | awk '{gsub(/Sesamum_pe;/,"")}1' > ped.cds_translation.formatted.fasta

cat ped.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat ped.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


#### Sesamum radiatum faa and fna extraction

gbseqextractor \
-f Sesamum_radiatum.gb \
-prefix rad -types CDS -cds_translation 

cat rad.cds.fasta | awk '{gsub(/Sesamum_ra;/,"")}1' > ra.cds.formatted.fasta

cat rad.cds_translation.fasta | awk '{gsub(/Sesamum_ra;/,"")}1' > ra.cds_translation.formatted.fasta

cat ra.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat ra.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


#### Andrographis paniculata faa and fna extraction

gbseqextractor \
-f Andrographis_paniculata.gb \
-prefix and -types CDS -cds_translation 


cat and.cds.fasta | awk '{gsub(/NC_022451.2;/,"")}1' > and.cds.formatted.fasta

cat and.cds_translation.fasta | awk '{gsub(/NC_022451.2;/,"")}1' > and.cds_translation.formatted.fasta


cat and.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat and.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


#### Aphelandra knappiae faa and fna extraction

gbseqextractor \
-f Aphelandra_knappiae.gb \
-prefix aph -types CDS -cds_translation 

cat aph.cds.fasta | awk '{gsub(/NC_041424.1;/,"")}1' > aph.cds.formatted.fasta

cat aph.cds_translation.fasta | awk '{gsub(/NC_041424.1;/,"")}1' > aph.cds_translation.formatted.fasta

cat aph.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat aph.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


#### Vitis vinifera faa and fna extraction 

gbseqextractor \
-f Vitis_vinifera.gb \
-prefix vit -types CDS -cds_translation 

cat vit.cds.fasta | awk '{gsub(/NC_007957.1;/,"")}1' > vit.cds.formatted.fasta

cat vit.cds_translation.fasta | awk '{gsub(/NC_007957.1;/,"")}1' > vit.cds_translation.formatted.fasta


cat vit.cds.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".fna")}
        print $0 > filename }'  

cat vit.cds_translation.formatted.fasta | awk '{
        if (substr($0, 1, 1)==">") {filename=(substr($0,2) ".faa")}
        print $0 > filename }' 


### atpH gene case

/home/yedomon/utils/mafft-7.475-with-extensions/core/mafft atpH.faa > atpH.aln.mafft

/home/yedomon/utils/pal2nal.v14/pal2nal.pl atpH.aln.mafft atpH.fna -output paml -nogap > atpH.aln.mafft.pal2nal

/home/yedomon/utils/paml4.9j/bin/codeml dn_ds.ctl


python /home/yedomon/data/01_ka_ks/00_starting_block/dnds-master/parse_codeml_output.py dn_ds.mlc > results_dn_ds_atpH.txt


/home/yedomon/utils/paml4.9j/bin/codeml alternative_model.ctl

/home/yedomon/utils/paml4.9j/bin/codeml null_model.ctl


# psbK case

/home/yedomon/utils/mafft-7.475-with-extensions/core/mafft psbK.faa > psbK.aln.mafft

/home/yedomon/utils/pal2nal.v14/pal2nal.pl psbK.aln.mafft psbK.fna -output paml -nogap > psbK.aln.mafft.pal2nal

/home/yedomon/utils/paml4.9j/bin/codeml dn_ds.ctl


python /home/yedomon/data/01_ka_ks/00_starting_block/dnds-master/parse_codeml_output.py dn_ds.mlc > results_dn_ds_psbK.txt


/home/yedomon/utils/paml4.9j/bin/codeml alternative_model.ctl

/home/yedomon/utils/paml4.9j/bin/codeml null_model.ctl


After calculating the LRT go [here](https://www.socscistatistics.com/pvalues/chidistribution.aspx) for p value calculation by pasting the LRT value and the df value also. Or [here](http://courses.atlas.illinois.edu/spring2016/STAT/STAT200/pchisq.html) is better there is also the R comand. In fact the Tutorial from evo3d used right tail chi square


I test it

```python
Chi-square = 6.024178, df = 1

Right-tail p-value is 0.01411

R command:       *pchisq(6.024178, 1, lower.tail=FALSE)*       or       1-pchisq(6.024178, 1)



```


*pchisq(6.024178, 1, lower.tail=FALSE)*




[Analysis of six chloroplast genomes provides insight into the evolution of Chrysosplenium (Saxifragaceae)](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-020-07045-4#Sec10)

> A total of 66 CDSs presented in all the analysed species, and were used for identification of positive selection using the branch-site model [32]. CDSs of each gene were aligned according to their amino acid sequences with MEGA7 [58]. The branch-site model in the program codeml of the PAML v4.9 package [60] was used to assess potential positive selection in Chrysosplenium that was set as the foreground branch. Selective pressure is measured by the ratio (ω) of the nonsynonymous substitution rate (dN) to the synonymous substitutions rate (dS). A neutral branch-site model (Model = 2, NSsites = 2, Fix = 1, and Fix ω = 1) and an alternative branch-site model (Model = 2, NSsites = 2, and Fix = 0) were applied separately. The right-tailed Chi-square test was used to compute p-values based on the difference of log-likelihood values between the two models with one degree of freedom. Moreover, BEB method [61] was implemented to calculate the posterior probabilities for amino acid sites that are potentially under positive selection. A gene with a p-value < 0.05 and ω > 1 was considered as a positively selected gene. An amino acid site with posterior probabilities > 0.95 was considered as positively selected.










[Phylogenomic Analysis and Dynamic Evolution of Chloroplast Genomes in Salicaceae](https://www.frontiersin.org/articles/10.3389/fpls.2017.01050/full#supplementary-material)


> To identify the microstructural mutations of Juglans, the five aligned sequences were further analyzed using DnaSP v5 (Librado and Rozas, 2009) and MEGA v5.0 (Tamura et al., 2011). Indel and SNP events were counted and positioned in the cp genome using DnaSP v5. Signatures of natural selection were studied for every chloroplast gene located outside of the inverted repeats region. Selective pressures (KA/KS) were computed with the codeml tool from PAML package v4.0 (Yang, 2007) using a YN00 model to test every gene sequence. We used the KaKs_calculator program to check the selective pressures (KA/KS) using same model as YN (Zhang et al., 2006). To avoid potential convergence biases, those genes with few mutations were filtered out from selective pressure analysis.






# Chloroplast



[Excel Trick#56 : How To Transpose Multiple Columns And Rows Into Single Coluhttps://youtu.be/OG_yNrQNJ6gmn || dptutorials](https://youtu.be/OG_yNrQNJ6g)



[Re-arrange multiple columns in a data set into one column using R](https://stackoverflow.com/questions/7398998/re-arrange-multiple-columns-in-a-data-set-into-one-column-using-r)


- #### [Comparative analysis of the complete chloroplast genome sequences of three Amaranthus species](https://www.cambridge.org/core/journals/plant-genetic-resources/article/abs/comparative-analysis-of-the-complete-chloroplast-genome-sequences-of-three-amaranthus-species/EA535B6272D6DB560AE2F12E6F8EA6A0)   the PDF [here](https://github.com/Yedomon/plastomics101/blob/main/su_young_hong_2019.pdf)






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




# Find SNP from an alignment of two seqs

The solution is [here](https://www.biostars.org/p/119214/)



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


# Indels detection

For indel detection I used the alignment file from the two species that I upload in DNAsp software. Then Ananlysis > Indels(Insertion-Deletion) polymorphism . YThen I got the following resut :


```
Input Data File: C:\...\indicum_triloba.mafft
 Number of sequences: 2    Number of sequences used: 2
 Selected region: 1-153439   Number of sites: 153439
 Total number of sites (excluding sites with gaps / missing data): 152762
 InDel Option: Model 1: Diallelic (non-overlapping)

 Total number of InDel sites analysed: 677
 Total number of (InDel and non-InDel) sites analysed, 152762 + 677: 153439

 Total number of InDels events analysed, I: 90

 Average InDel length event: 7.522
 Average InDel length: 7.522

 Number of InDel Haplotypes: 2
 InDel Haplotype Diversity: 1.000

 InDel Diversity, k(i): 90.000
 InDel Diversity per site, Pi(i): 0.00059
 Theta (per sequence) from I, Theta(i)-W: 90.000

```

The total number of indels sites here is 677. It is also possible to save the result in nexus file.










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

I used DNAsp v6. First I aligned using MAFFT all fasta files then import the alignment file into DNAsp > analysis > DNA Polymorphism > click on compute > set window length to 800 bp and step size to 50 > Click OK.


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



I used gbseqextractor tool


```bash
[kplee@localhost ~]$ gbseqextractor --help
usage: gbseqextractor [-h] -f <STR> -prefix <STR> [-seqPrefix <STR>]
                      [-types {CDS,rRNA,tRNA,wholeseq,gene} [{CDS,rRNA,tRNA,wholeseq,gene} ...]]
                      [-cds_translation] [-gi] [-p] [-t] [-s] [-l] [-rv] [-F]

Extract any CDS or rNRA or tRNA DNA sequences of genes from Genbank file.

Seqid will be the value of '/gene=' or '/product=', if they both were not
present, the gene will not be output!

version 20201128:
    Now we can handle compounlocation (feature location with "join")!
    We can also output the translation for each CDS (retrived from '/translation=')

Please cite:
Guanliang Meng, Yiyuan Li, Chentao Yang, Shanlin Liu,
MitoZ: a toolkit for animal mitochondrial genome assembly, annotation
and visualization, Nucleic Acids Research, https://doi.org/10.1093/nar/gkz173



optional arguments:
  -h, --help            show this help message and exit
  -f <STR>              Genbank file
  -prefix <STR>         prefix of output file. required.
  -seqPrefix <STR>      prefix of each seq id. default: None
  -types {CDS,rRNA,tRNA,wholeseq,gene} [{CDS,rRNA,tRNA,wholeseq,gene} ...]
                        what kind of genes you want to extract? wholeseq for
                        whole fasta seq. WARNING: Each sequence in the result
                        files corresponds to ONE feature in the GenBank file,
                        I will NOT combine multiple CDS of the same gene into
                        ONE! [CDS]
  -cds_translation      Also output translated CDS (required -types CDS). The
                        translations are retrived directly from the
                        '/translation=' key word. [False]
  -gi                   use gi number as sequence ID instead of accession
                        number when " gi number is present. (default:
                        accession number)
  -p                    output the position information on the ID line.
                        Warning: the position on ID line is 0 left-most!
                        [False]
  -t                    output the taxonomy lineage on ID line [False]
  -s                    output the species name on the ID line [False]
  -l                    output the seq length on the ID line [False]
  -rv                   reverse and complement the sequences if the gene is on
                        minus strand. Always True!
  -F                    only output full length genes,i.e., exclude the genes
                        with '>' or '<' in their location [False]



```


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





[extract](https://linuxize.com/post/how-to-extract-unzip-tar-gz-file/#:~:text=gz%20file%20is%20a%20Tar,followed%20by%20the%20archive%20name.)


[zip](https://mkyong.com/linux/linux-how-to-gzip-a-folder/)


evomics workshop on [multiple sequence alignement](http://evomics.org/wp-content/uploads/2016/06/Align_Trim_Concat_Labs_Phylogenomics_2017.pdf), [concatenation , parttion and model testing](http://evomics.org/wp-content/uploads/2019/01/Workshop_practical_concatenation_model_testing.pdf) and [phylogenetic tree visualization](http://evomics.org/wp-content/uploads/2016/06/TreeEditingVisualization_WoPhylogenomics_CK2017.pdf)








Amazing tutorials of [Michael Matschiner](https://github.com/mmatschiner/tutorials) for Phylogenetic inference | [Michael Matschiner Publication](https://scholar.google.com/citations?hl=en&user=R0SHyeUAAAAJ&view_op=list_works&sortby=pubdate)


- #### [Bayesian phylogeny](https://github.com/mmatschiner/tutorials/blob/master/bayesian_phylogeny_inference/README.md)

- #### [Divergence time estimation](https://github.com/mmatschiner/tutorials/blob/master/divergence_time_estimation/README.md)
