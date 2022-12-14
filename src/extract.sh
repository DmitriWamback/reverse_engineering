# Program that breaks into a C program and changes its binary
# to bypass the program from a locked key

gcc src/key.c -o src/key
rm src/asm/key_raw.asm
objdump -d src/key >> src/asm/key_raw.asm

# setne found on line 15 of key.asm should be changed to sete
# setne (set not equal)
# sete  (set equal)