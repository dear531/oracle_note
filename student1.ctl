load data
	infile '/mnt/hgfs/Data/gitstorage/oracle/student1.txt'
	into table student
	(stuno position(01:04) integer external,
	 stuname position(06:09) char,
	 sex position(11:13) char,
	 old position(15:16) integer external
	)
