load data
	infile '/mnt/hgfs/data/gitstorage/oracle/persons.csv'
	append into table persons
	fields terminated by ','
	(code,name,sex,old)
