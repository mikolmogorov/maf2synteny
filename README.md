maf2synteny
===========

A tool for converting for recovering synteny blocks
from multiple alignment (in MAF fromat)

This tool is a standalone version of a Ragout module [http://fenderglass.github.io/Ragout]

Install
-------

	make

Usage
-----

	maf2synteny maf_file out_dir simpl_params block_size_1 [block_size_2 ...]

	maf_file		input file with alignment in maf format
	out_dir			output directory
	simpl_params	a file with simplifacation parameters (use default_params.txt)
	block_size_n	any number of synteny block sizes (will have ouput for every single size)