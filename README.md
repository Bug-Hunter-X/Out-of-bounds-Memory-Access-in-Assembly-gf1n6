This repository contains an example of a common error in assembly programming: out-of-bounds memory access. The `bug.asm` file demonstrates the error, while `bugSolution.asm` provides a corrected version.  The error arises from the lack of bounds checking on the `ecx` register before using it to calculate the memory address.