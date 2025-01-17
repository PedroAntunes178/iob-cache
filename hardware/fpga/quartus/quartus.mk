FPGA_OBJ:=iob_cache_0.qxp
FPGA_LOG:=quartus.log

CONSTRAINTS:=$(wildcard *.sdc)

FPGA_SERVER=$(QUARTUS_SERVER)
FPGA_USER=$(QUARTUS_USER)

include ../../fpga.mk


local-clean:
	find . -type d -not \( -name '.' -o -name '..' \) -exec rm -rf {} \;


post-build:
	mv output_files/*.fit.summary $(FPGA_LOG)

