#CXX = g++
CXX = clang++

CXXFLAGS = -g -O3 -I./ -I/usr/local/include -ftemplate-depth-400

all : json json_printer json_karma

json : json.cpp
	$(CXX) json.cpp $(CXXFLAGS) -o $@

json_printer : json_printer.cpp
	$(CXX) json_printer.cpp $(CXXFLAGS) -o $@

json_karma : json_karma.cpp
	$(CXX) json_karma.cpp $(CXXFLAGS) -o $@

.PHONY : clean

clean: 
	rm -f json
	rm -f json_printer
	rm -f json_karma
