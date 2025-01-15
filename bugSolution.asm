mov ecx, [some_variable] ; load the size of the array into ecx
mov eax, ecx ; copy ecx for comparison later
cmp ecx, 0 ; check if the array is empty
je empty_array ; jump to the empty array handling section
sub eax, 1; check if the index is within bounds
cmp edx, eax ; compare to the last index
jae out_of_bounds ; jump if out of bounds
mov eax, [ebx + 4*edx] ; access the array element
jmp end_access

empty_array:
; handle empty array case
jmp end_access

out_of_bounds:
; handle out-of-bounds access (e.g., error message or exception)
jmp end_access

end_access: