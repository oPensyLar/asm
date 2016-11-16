include     kernel32.inc

.386							; define juego de instrucciones
.model flat, stdcall			; 32bits + stdcall para las APIs Windows
option casemap:none				; el linkeo sera case sensitive 			(OPCIONAL)

.data							; Start del segmento .data

	hello 	byte 	'Hello World',	10




.code 							; Start del segmento .code
public main						; export de la etiqueta main
main:							; aqui comienza el main

ret								; retorna el control a SO

END								; Finish xD






; MASM COMPILE ...
; ml /c /coff main.asm

;	/c 			Omite  el llamado al linker
; 	/coff		Asigna el formato de salida (Common Object File Format)




; LINKING ....
; link /ENTRY:main /SUBSYSTEM:CONSOLE main.obj /OUT:test123.exe