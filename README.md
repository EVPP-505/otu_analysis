# README

## OTU (Operational Taxonomic Unit) Analysis

This repo houses the data and documents for the cross over class with EVPP-490/643


### Data

The repo contains some data (.csv file) generated using the RDP database. It is a basic OTU (operational taxonomic unit) table. This table goes out to the highest level taxa identification, and generates 1,475 OTUs for each of 12 soil samples.

Half the soil samples (#1-6) were collected upstream of a wastewater treatment plant and half (#7-12) were collected downstream. We are interested in comparing both alpha and beta diversity statistics (see below).

There are a couple recent papers that provide example plots and R-packages that can accomplish these analyses.  That said, we are mostly interested in ideas that provide a basic exploration of the data.

* The data are located in the `'data/'` directory in the project.

* The papers are located in the `'references/'` directory.


### Proposed Outcomes

We would like to be able to repeat these analyses on another “OTU” table generated with a different reference database in order to compare results.  So keep this in mind as you develop the project.  What fields are consistent?  How can a new data set be incorporated?

We want a well-documented project describing each step of your processing.  Think about the following:

* What libraries were used?  
* Where were the data located and loaded?  
* What variables are available?  
* What variables were chosen and used?  
* What analysis were performed?  
* Describe the outcome?  
* **MOST IMPORTANTLY,** could someone (not you) read the code and replicate the analysis?

**Per Prof. Morrow: ** A basic test that I would like to do with the student to compare whether there are significant community level differences between upstream and downstream sites is a PERMANOVA of Bray-Curtis dissimilarities (adonis in R package Vegan; Okasanen et al. 2013).

The list below contains several possible avenues for analysis, but is **not** meant to suggest we will or need to accomplish everything; there simply is not enough time or resources.

1) Alpha diversity (within sample):  
    i) Shannon H’ Statistic
    i) Simpson Index
    i) Rarefaction curves

2) Beta diversity (between sample):  
    i) nMDS plots
    i) PCA
    i) PCoA
    i) RDA  
  
3) Plots:  
    i) Bar charts
    i) Pie charts
    i) Heatmaps
    i) Phylogenetic Trees

