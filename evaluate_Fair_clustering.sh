#!/bin/bash

c_v_l=False # Set true for clusters vs lambda figures in Synthetic or Synthetic-unequal dataset
f_v_E=False # Set true to check the fairness error vs Discrete clustering energy plots
conv=False # Check true to see if the algorithm converges.
#Census II
dataset=CensusII
cluster_option=kmedian
lmd=160
python test_fair_clustering.py -d $dataset \
                             --cluster_option $cluster_option \
                             --lmbda $lmd \
                             --plot_option_clusters_vs_lambda $c_v_l \
                             --plot_option_fairness_vs_clusterE $f_v_E \
                             --plot_option_convergence $conv


