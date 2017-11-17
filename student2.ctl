load data
	infile '/mnt/hgfs/Data/gitstorage/oracle/student2.txt'
	append into table student
	(stuno position(01:04) integer external,
	 stuname position(06:11) char,
	 sex position(13:15) char,
	 old position(17:18) integer external
	)
