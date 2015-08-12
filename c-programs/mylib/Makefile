all :
	g++ -c mylib.cpp -o mylib.o
	ar rvs libmylib.a mylib.o
	g++ -shared -o libmylib.so -fPIC mylib.cpp

install :
	cp libmylib.a ${prefix}/lib
	cp libmylib.so ${prefix}/lib
	cp mylib.hpp ${prefix}/include
