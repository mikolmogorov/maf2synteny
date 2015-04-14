maf2synteny
===========

A tool for converting for recovering synteny blocks
from multiple alignment (in MAF fromat)

This tool is a standalone version of Ragout module [http://fenderglass.github./Ragout]

Install
-------

	make

Usage
-----

Usage: maf2synteny [-o out_dir] [-s simpl_params] [-m block_sizes] maf_file

positional arguments:
	maf_file	path to maf file

optional arguments:
	-o out_dir	path to the output directory [default = .]
	-s simpl_params	path to a file with simplifcation parameters [default = not set]
	-b block_sizes	comma-separated list of synteny block scales [default = 5000]

Default simplification parameters:
----------------------------------
    30 10
    100 100
    500 1000
    1000 5000
    5000 15000