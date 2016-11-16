%define ExitProcess _ExitProcess@4
%define WriteFile _WriteFile@20

global  start

extern  ExitProcess
extern  WriteFile

section .text
start:

                push    dword 0					; LPOVERLAPPED lpOverlapped
                push    dword num_chars			; DWORD lpNumberOfBytesWritten
                push    dword MSGLEN			; DWORD nNumberOfBytesToWrite
                push    msg 				 	; LPCVOID lpBuffer
                push    dword -11				; HANDLE hFile
                call    WriteFile

		        push    dword 0
	            call    ExitProcess


section .data
num_chars       dd      0
msg             db      '123'
MSGLEN          equ     $ - msg




; nasm -f win32 hw_console.asm -o hw_console.obj
; link /entry:start /subsystem:console hw_console.obj C:\v6.1\Lib\kernel32.lib