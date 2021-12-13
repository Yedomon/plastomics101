# Package

library(pheatmap)
library(RColorBrewer)

# Data

data_set = read.csv("ka_ks_table.csv", h = T, sep = ",", row.names = 1)


# Make a matrix

data_matrix = as.matrix(data_set[1:6])


# Render the heatmap

pheatmap(data_matrix)



pos_df = data.frame("Pos" = data_set$Class)
rownames(pos_df) = rownames(data_matrix) # name matching




# Specify colors
ann_colors = list(
  #Time = c("white", "firebrick"),
  #CellType = c(CT1 = "#1B9E77", CT2 = "#D95F02"),
  Pos=c(ATP_synthase ="#97be0d", 
              NADH_dehydrogenase = "#ffec00", 
              Cytochrome_b_f_complex ="#799c13", 
              Photosystem_I_= "#00662c",
              Photosystem_II= "#328925",
              RubisCO_large_subunit= "#1fa12d",
              Large_subunit_of_ribosome= "#9e7742",
              Small_subunit_of_ribosome="#dbaa73",
              Dna_dependent_RNA_polymerase= "#e2001a",
              Translation_initiation_factor= "#445AAD",
              Other_genes= "#ab259d")
)




pheatmap(data_matrix,
         annotation_row = pos_df, 
         cutree_cols = 6,
         color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
         #color = colorRampPalette(rev(brewer.pal(n = 9, name = "RdBu")))(255),
         display_numbers = TRUE,
         annotation_colors = ann_colors
         ) 







