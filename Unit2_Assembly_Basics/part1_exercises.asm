; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [Paloma Escobedo]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	; dump_regs 1
        ; call print_nl
        ; dump_regs 2	

        ; mov eax, 0 
        ; mov ah, 18 // set with a base ten number 
        ; mov al, 0BAH // this changes in its coresponding spot in the regesters aka EAX
        ; dump_regs 1
        ; call print_nl

        ; mov ax, 4 // if you make a big instruction ex ax rather than eax then it will completely replace 
        ; dump_regs 2 

        ; mov eax , 3 
        ; mov ebx, 4 
        ; add eax, ebx
        ; dump_regs 1 

        ; mov eax, 40 
        ; dump_regs 1 
        ; call print_nl

        ; mov ebx, 2 
        ; dump_regs 2
        ; call print_nl

        ; add eax, ebx 
        ; dump_regs 3
        ; call print_nl


        ; mov eax, 34 
        ; sub eax, 19 ; immediate operand can be used to substract 
        ; dump_regs 1

        ; mov eax, -32 ; an example of using a negative number edits the regester number in a different way 
        ; dump-regs 2 

        ; inc 23 //ERROR

        // Exercise number 2 in class slides 
        Carefully MOV information into registers so you can store 16 - 4 in a
        register. Then copy the value into another register and INC it.
        Dump the registers after every operation, be sure to put a new line
        between each register dump and use sensible labels for every dump.

        ; mov eax, 16 
        ; dump_regs 1 
        ; call print_nl

        ; mov ebx, 4 
        ; dump_regs 2 
        ; call print_nl

        ; sub eax, ebx 
        ; dump_regs 3 
        ; call print_nl

        ; mov eax, ecx 
        ; dump_regs 4 
        ; call print_nl

        ; inc ecx 
        ; dump_regs 5 
        ; call print_nl

        mov eax, 4 
        dump_regs 1 
        call print_nl

        mov ebx, 3 
        dump_regs 2 
        call print_nl

        inc ebx, 3 ++


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


