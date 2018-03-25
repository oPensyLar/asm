# Macros

RM = rm
NSM = nasm
LINKER = ld
NSM_FLAGS =  -f elf64 -F dwarf
NAM_STRING = test-gdb-string
PARAM_RM = -v
GDB = gdb

string:
	$(NSM) $(NSM_FLAGS) $(NAM_STRING).a
	$(LINKER) -o $(NAM_STRING) $(NAM_STRING).o
	$(GDB) $(NAM_STRING)

clean-string:
	$(RM) $(PARAM_RM) $(NAM_STRING)