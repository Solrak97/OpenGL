NAME=myprogram
LIBRARY=./lib
INCLUDE=./include
SRCDIR=./src
OBJDIR=./obj
ODIR=./bin
C_FLAGS=-fdiagnostics-color=always -g
CPP=g++
C_VER=c++17
SRCFILES := $(wildcard $(SRCDIR)/*.cpp)

$(ODIR)/$(NAME).exe: $(OBJFILES)
	$(CPP) $(C_FLAGS) -std=$(C_VER) -I$(INCLUDE) -L$(LIBRARY) $(SRCFILES) src/glad.c -lglfw3dll -o $(ODIR)/$(NAME)
