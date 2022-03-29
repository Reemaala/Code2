all: execution

execution: dayTypeTest.o dayType.o
		g++ dayTypeTest.o dayType.o -o execution
dayTypeTest.o: dayTypeTest.cc
		g++ -c dayTypeTest.cc
dayType.o: dayType.cc g++ -c dayType.cc

clean:
		rm -rf *o execution
