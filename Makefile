# Compiler and Linker, with Options (e.g. for "COMPILER.cpp")
export CXX := cl
export CXXFLAGS := -nologo -W3 -Zm300 -TP -EHsc -Ox -MT

# Dependencies
export SYSTEM_LIBS := user32.lib gdi32.lib msimg32.lib comdlg32.lib shell32.lib advapi32.lib wsock32.lib

export LEDA_INCLUDE_DIR := ..\incl
export LEDA_LIBRARY_DIR := ..\lib
export LEDA_LIB := leda.lib

SUBMODULE_ARCHITECTURE := architecture
SUBMODULE_IMPLEMENTATION := implementation
SUBMODULE_DEMO := demo

SUBMODULES := $(SUBMODULE_ARCHITECTURE) $(SUBMODULE_IMPLEMENTATION) $(SUBMODULE_DEMO)


.PHONY: all
all: $(SUBMODULE_DEMO)


$(SUBMODULE_DEMO): $(SUBMODULE_ARCHITECTURE) $(SUBMODULE_IMPLEMENTATION)

$(SUBMODULE_IMPLEMENTATION): $(SUBMODULE_ARCHITECTURE)

.PHONY: $(SUBMODULES)
$(SUBMODULES):
	$(MAKE) --directory=$@
