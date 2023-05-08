; -----------------------------------------------
; UNIVERSIDAD DEL VALLE DE GUATEMALA
; Organización de computadoras y Assembler
; Ciclo 1 - 2023
;
; Nombre: Laboratorio 8
; Descripción: Evaluador de régimen apropiado en SAT y obligaciones fiscales.
; Autores: Diego Valenzuela 22309
;		   Ruth de Leon 22428
;
; STACK: push - contiene cadena msg1
; ----------------------------------------------- */
.386
.model flat, stdcall, c

.stack 4096
;ExitProcess proto,dwExitCode:dword

.data




.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib

extrn printf:near
extrn exit:near

public main
main proc





main endp
end