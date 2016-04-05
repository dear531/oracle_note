test:test.c
	gcc $^ -o $@ -I $(ORACLE_HOME)/precomp/public -L $(ORACLE_HOME)/lib -l clntsh
test.c:%.c:%.pc
	proc iname=$< oname=$@
clean:
	-rm -rf *.c *.o *.cc *~ *.lis  test
.PHONY:
	clean
#proc iname=test.pc oname=test.c
#gcc -o test.o test.c -I $ORACLE_HOME/precomp/public -L $ORACLE_HOME/lib -l clntsh
