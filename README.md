maf2synteny
===========

A tool that postprocesses whole genome alignment (for two or more genomes)
and produces coarse-grained synteny blocks. Currently, either 
[Cactus](https://github.com/ComparativeGenomicsToolkit/cactus)
or [SibeliaZ](https://github.com/medvedevgroup/SibeliaZ) alignments are supported.

This tool is originally a part of [Ragout package](http://fenderglass.github.io/Ragout).

Building
--------

`make`

Building requires C++11 compiler and development environent installed in your system


Usage
-----

```
    Usage: maf2synteny [-o out_dir] [-s simpl_params] [-m block_sizes] alignment_file
   
    positional arguments:
       alignment_file	path to alignment file in maf or gff format
    
    optional arguments:
       -o out_dir	path to the output directory [default = .]
       -s simpl_params	path to a file with simplifcation parameters [default = not set]
       -b block_sizes	comma-separated list of synteny block scales [default = 5000]
```

Input
-----

maf2synteny takes as input whole genome alignment in `.maf` or `.gff` formats.
The tool is optimized to work with Cactus or SibeliaZ alignments. Other
tools that generate alignments in similar format might not be supported.

The main reason for that is that maf2synteny expect all local alignments to be
non-overlapping, which is a very specific kind of whole genome alignmet.
Such alignment characterizes all repeated elements in the genome(s)
in the alphabet of maximum non-overlapping units. If the input alignmet
does not have this property, maf2synteny will likely not be able to produce good-quality
synteny blocks.

Simplification parameters
---------------------------------

One can specify custom graph simplification parameters to control
the granularity of produced synteny blocks. The paramers
could be supplied in a text file, where each line contains
two numbers: `min_block max_gap`. Please refer to the paper below
for the explanation how these parameters control the block
generation rpcedure.

Default parameters: `{30, 10}, {100, 100}, {500, 1000}, {1000, 5000}, {5000, 15000}`


Citation
--------

* Kolmogorov M, Armstrong J, Raney BJ, Streeter I, Dunn M, Yang F, Odom D, Flicek P, Keane TM,
Thybert D, Paten B., Pham S. "Chromosome assembly of large and complex genomes using multiple references"
Genome research. 2018 [doi:10.1101/gr.236273.118](https://genome.cshlp.org/content/28/11/1720.short)
