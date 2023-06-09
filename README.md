# heatIGPS

This repository contains codes and notebooks to reproduce the analysis published in: 
**Turning Up the Heat Mimics Allosteric Signaling in Imidazole-Glycerol Phosphate Synthase**,
by Federica Maschietto, Uriel Morzan, Florentina Tofoleanu, Aria Gheeraert, Apala Chaudhuri, Gregory Kyro, Peter Nekrasov, Bernard Brooks, Patrik Loria, Ivan Rivalta, Victor Batista. 

[preprint](http://ursula.chem.yale.edu/~batista/publications/HeatIsOn_IGPS.pdf)

## before running

see instruction in python_environment.sh to setupt the python environment

## Content

- CENTRALITY_PATHWAYS/CORRELATION/

code to compute correlation of CA displacements, using (linearized) generalized correlation coefficients, accoriding to the formalism in Lange et. al, 2006 Mar 1;62(4):1053-61, and eigenvector centrality.

- CENTRALITY_PATHWAYS/PATHS/

code to compute optimal pathways for motion transfer between the active site (hC84, fH178, fE180) and the effector binding calculated employing the Dijkstra algorithm. The possible edges composing the pathway are all the possible pair of amino acids in the system with the exception of the ones included in the exclusion list generated by the program edges.f90 (stored in the EDGES/ directory).

- CENTRALITY_PATHWAYS/EDGES/

available edges

- PCA/

notebook to computed the principal components of motion of the trajectories and projections. The notebook reproduces the analysis described in section *Temperature induced adaptation of essential dynamics* of the article.


- SS/

the notebook reproduces the secondary structure persistency analysis as described in the article (Figure 3,D).

- DPCN
minimal code to reproduce the DPCN analysis:
more information on DPCM can be found at the original repository by Aria Gheeraert: https://github.com/agheeraert/pmdlearn


- TEMP_COEFF
Raw data and instructions to reproduce the temperature coefficients analysis in figure 4a,b

### Molecular Dynamics trajectories can be accessed at the following [link](https://drive.google.com/drive/folders/12WVo_dA5RvSZW2rvhB1rd8CxVz3Cb-CA?usp=sharing)


