;;; -*- mode: Assembler -*-
;;;
;;; Food for thinking: x86 ASM solution to fizzBuzz(100) in O(1)
;;;
;;; Author Milan `insomniaSalt` Santosi <insomniaSalt@gmail.com>
;;;
;;;
;;; Ascii 10 is newline, 32 is space.

section .data
d db 	   "1",32,    "2",32, "Fizz",32,    "4",32,     "Buzz",32, "Fizz",32,    "7",32,    "8",32, "Fizz",32,     "Buzz",10,\
    	  "11",32, "Fizz",32,   "13",32,   "14",32, "FizzBuzz",32,   "16",32,   "17",32, "Fizz",32,   "19",32,     "Buzz",10,\
    	"Fizz",32,   "22",32,   "23",32, "Fizz",32,     "Buzz",32,   "26",32, "Fizz",32,   "28",32,   "29",32, "FizzBuzz",10,\
	      "31",32,   "32",32, "Fizz",32,   "34",32,     "Buzz",32, "Fizz",32,   "37",32,   "38",32, "Fizz",32,     "Buzz",10,\
	      "41",32, "Fizz",32,   "43",32,   "44",32, "FizzBuzz",32,   "46",32,   "47",32, "Fizz",32,   "49",32,     "Buzz",10,\
    	"Fizz",32,   "52",32,   "53",32, "Fizz",32,     "Buzz",32,   "56",32, "Fizz",32,   "58",32,   "59",32, "FizzBuzz",10,\
    	  "61",32,   "62",32, "Fizz",32,   "64",32,     "Buzz",32, "Fizz",32,   "67",32,   "68",32, "Fizz",32,     "Buzz",10,\
          "71",32, "Fizz",32,   "73",32,   "74",32, "FizzBuzz",32,   "76",32,   "77",32, "Fizz",32,   "79",32,     "Buzz",10,\
	    "Fizz",32,   "82",32,   "83",32, "Fizz",32,     "Buzz",32,   "86",32, "Fizz",32,   "88",32,   "89",32, "FizzBuzz",10,\
		  "91",32,   "92",32, "Fizz",32,   "94",32,     "Buzz",32, "Fizz",32,   "97",32,   "98",32, "Fizz",32,     "Buzz",10
len equ $-d
section .text
global _start
_start:
  mov eax,4
  mov ebx,1
  mov ecx,d
  mov edx,len
  int 0x80
  mov eax,1
  xor ebx,ebx
  int 0x80

;;; nasm -f elf32 fizzbuzz-100.asm -o fizzbuzz-100.o && ld -m elf_i386 -o fizzbuzz-100 fizzbuzz-100.o && ./fizzbuzz-100
