CXX = g++
CFLAGS = -g -Wall -std=c++11
NOMAIN = 
MAINOBJ = lab8main.o
TESTOBJ = test.o
OBJS = $(MAINOBJ) $(NOMAIN)
TESTOBJS = $(TESTOBJ) $(NOMAIN)

a.out: $(OBJS)
	$(CXX) $(CFLAGS) $(OBJS) -o $@

$(MAINOBJ): lab8main.cc tarray.h tarray.template
	$(CXX) $(CFLAGS) -c lab8main.cc -o $@


test: $(TESTOBJS)
	$(CXX) $(CFLAGS) $(TESTOBJS) -o $@

$(TESTOBJ): test.cc
	$(CXX) $(CFLAGS) -c test.cc -o $@


clean:
	rm -rf $(NOMAIN) $(MAINOBJ) $(TESTOBJ) a.out test