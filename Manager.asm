;========1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
;Author information
;  Author name: Joshua Gonzalez
;  Author email: JoshuaGonzalez@fullerton.edu
;This file
;  Name: control-d.asm
;  Language: X86-64
;  Syntax: Intel
;  Assemble: nasm -f elf64 -l control-d.lis -o control-d.o control-d.asm
;  Purpose: Set up a loop that terminates on a control-d signal from the keyboard.
;  Max page width: 132 columns
;  Begin comments: column 61
;  Optimal print specification: 132 columns wide, monospace, 8½x11 paper
;========1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
;
;===== Begin code area ============================================================================================================

;%include "debug.inc"                                       ;The debug tool was used during the development of this program.

extern printf                                               ;External C++ function for writing to standard output device

extern scanf                                                ;External C++ function for reading from the standard input device

global Manager						    ;Enable this program to be called from outside

segment .data						    ;Place initialized data here

;===== Declare some messages ======================================================================================================

initialmessage db "This X86 program will reverse your array of integers", 10, 0
prompt db "Enter a sequence of long integers separated by white space. After the last input press enter followed by Control+D: " 10, 0
outputinitial db "These numbers were received and placed into the array: ", 10, 0
outputresult db "After the reverse function these are the numbers of the array in the new order: " 10, 0
outputdetails db "The number of numbers entered is %d and the mean is %d.", 10, 0
