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
    10, 10
    30, 100
    50, 5000
    100, 7000
    500, 10000
    1500, 50000
    5000, 100000
    10000, 500000
    50000, 1000000
