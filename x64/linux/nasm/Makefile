# Macros

RM = rm
NSM = nasm
LINKER = ld
NSM_FLAGS =  -f elf64 -F dwarf
NAM_STRING = test-gdb-string
NAM_NUMS = test-gdb-nums
PARAM_RM = -v
GDB = gdb


string:
	$(NSM) $(NSM_FLAGS) $(NAM_STRING).a
	$(LINKER) -o $(NAM_STRING) $(NAM_STRING).o
	$(GDB) $(NAM_STRING)




nums:
	$(NSM) $(NSM_FLAGS) $(NAM_NUMS).a
	$(LINKER) -o $(NAM_NUMS) $(NAM_NUMS).o
	$(GDB) $(NAM_NUMS)




clean-string:
	$(RM) $(PARAM_RM) $(NAM_STRING)



clean-nums:
	$(RM) $(PARAM_RM) $(NAM_NUMS)
	$(RM) $(PARAM_RM) $(NAM_NUMS).o