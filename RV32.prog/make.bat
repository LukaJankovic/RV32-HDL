riscv64-unknown-elf-gcc-10.1.0.exe -march=rv32i -mabi=ilp32 -c test.c
riscv64-unknown-elf-objcopy.exe -O binary -j .text .\test.o binfile
python.exe .\genpmem.py .\binfile test
::echo F|xcopy /s /y .\test ..\RV32.srcs\sources_1\new\pmem.mem
::echo F|xcopy /s /y .\test ..\RV32.sim\sim_1\behav\xsim\pmem.mem
