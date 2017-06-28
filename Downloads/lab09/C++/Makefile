CXX=g++ -std=c++11
CXXFLAGS=-Wall

build: lab09

lab09: lab09.o
	$(CXX) $(CXXFLAGS) -o $@ $^

lab09.o: lab09.cpp

run: lab09
	./lab09

clean:
	rm lab09 lab09.o
