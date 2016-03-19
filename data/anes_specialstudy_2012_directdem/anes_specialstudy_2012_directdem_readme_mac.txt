The SPSS, Stata, and SAS code must be changed slightly if you are using a Mac, but it is quite straightforward.  

Create the default directory through the user name, using the same folder names as is given in the PC code. NOTE: slashes in the file path must be changed from back- to forward-slashes.

Ex: '/Users/username/anes2012/20141215'

Just as with the PC directions, place the unzipped files in this directory

The file paths and code will look like this: 

File handle rawdata /name='/Users/username/anes2012/20141215/anes_specialstudy_2012_diretdem_rawdata.txt' LRECL=4260.

File handle readdata /name='/Users/username/anes2012/20141215/anes_specialstudy_2012_diretdem_columns.sps'.

File handle varlab/name='/Users/username/anes2012/20141215/anes_specialstudy_2012_diretdem_varlabels.sps'.

File handle codelab /name='/Users/username/anes2012/20141215/anes_specialstudy_2012_diretdem_codelabelsassign.sps'.

Include file=readdata.
Include file=varlab.
Include file=codelab.
Save outfile= '/Users/username/anes2012/20141215/anes_specialstudy_2012_diretdem.sav'.
