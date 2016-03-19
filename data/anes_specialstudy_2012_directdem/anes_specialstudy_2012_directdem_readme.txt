1) Files contained in the anes_specialstudy_2012_diretdem.zip:

anes_specialstudy_2012_diretdem_rawdata.txt			Raw data file

anes_specialstudy_2012_diretdem_codebook.zip			Codebook files

anes_specialstudy_2012_diretdem_sas.zip				SAS syntax files
 anes_specialstudy_2012_diretdem_codelabelsassign.sas
 anes_specialstudy_2012_diretdem_columns.sas
 anes_specialstudy_2012_diretdem_codelabelsdefine.sas
 anes_specialstudy_2012_diretdem_missingdata.sas
 anes_specialstudy_2012_diretdem_run.sas
 anes_specialstudy_2012_diretdem_varlabels.sas
 
anes_specialstudy_2012_diretdem_spss.zip			SPSS syntax files
 anes_specialstudy_2012_diretdem_codelabelsassign.sps
 anes_specialstudy_2012_diretdem_columns.sps
 anes_specialstudy_2012_diretdem_missingdata.sps
 anes_specialstudy_2012_diretdem_run.sps
 anes_specialstudy_2012_diretdem_varlabels.sps
 
anes_specialstudy_2012_diretdem_stata.zip			Stata syntax files
 anes_specialstudy_2012_diretdem_codelabelsassign.do
 anes_specialstudy_2012_diretdem_columns.dct
 anes_specialstudy_2012_diretdem_codelabelsdefine.do
 anes_specialstudy_2012_diretdem_missingdata.do
 anes_specialstudy_2012_diretdem_run.do
 anes_specialstudy_2012_diretdem_varlabels.do 


_codelabelsassign = code labels
_columns = columns 
_codelabelsdefine = formats
_missingdata = missing data
_varlabels = variable labels
_run = run file


2) Note on the raw data file

The raw data file (anes_specialstudy_2012_diretdem_rawdata.txt) included in this dataset package is 
both fixed column and bar (|) delimited.


3) Note on 'version' variable

The first variable on the raw data file is the 'version' variable. This includes the version of 
the data as designated by the date of production (YYYYMMDD) for these data.


4) Instructions for using SAS, SPSS, and Stata syntax files

The following will allow users to create SAS, SPSS, or Stata datasets using the syntax
files available from the ANES website: First, move the raw data file and all syntax files
to one directory (e.g. 'C:\anes\anes2012\20141215'). Second, edit the 'run' files to
include the pathname to the directory where the files reside. The pathname must be added 
to each line that references the raw data file, any of the input syntax files, and the
output file statements (SPSS and Stata). In the SAS 'run' file, the pathname must also be added
to the libname statement. In the case of Stata, in addition to adding pathnames to the 'run'
file, users will need to add the pathname to the first line of the dictionary file (.dct) 
where the raw data file is referenced. Third, execute the edited 'run' file which will 
create a SAS, SPSS, or Stata data files in the directory previously specified by the user.
Missing data statements are, by default, commented out in the 'run' file. Users may restore
them by removing the asterisk (*) at the start of the relevant line.


