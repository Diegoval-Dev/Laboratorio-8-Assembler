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

	jun22 DW 1000
	jul22 DW 1499
	ago22 DW 2912
	sep22 DW 2892
	oct22 DW 1293
	nov22 DW 4912
	dic22 DW 1933
	en23 DW 2913
	feb23 DW 9183
	mar23 DW 2935
	abr23 DW 9234
	may23 DW 8421
	msg1 BYTE "junio 2022 Facturado: ",0Ah,0
	msg2 BYTE "IVA: ",0Ah,0
	msg3 BYTE "julio 2022 Facturado: ",0Ah,0
	msg4 BYTE "IVA: ",0Ah,0
	msg5 BYTE "agosto 2022 Facturado: ",0Ah,0
	msg6 BYTE "IVA: ",0Ah,0
	msg7 BYTE "septiembre 2022 Facturado: ",0Ah,0
	msg8 BYTE "IVA: ",0Ah,0
	msg9 BYTE "octubre 2022 Facturado: ",0Ah,0
	msg10 BYTE "IVA: ",0Ah,0
	msg11 BYTE "noviembre 2022 Facturado: ",0Ah,0
	msg12 BYTE "IVA: ",0Ah,0
	msg13 BYTE "diciembre 2022 Facturado: ",0Ah,0
	msg14 BYTE "IVA: ",0Ah,0
	msg15 BYTE "enero 2023 Facturado: ",0Ah,0
	msg16 BYTE "IVA: ",0Ah,0
	msg17 BYTE "febrero 2023 Facturado: ",0Ah,0
	msg18 BYTE "IVA: ",0Ah,0
	msg19 BYTE "marzo 2023 Facturado: ",0Ah,0
	msg20 BYTE "IVA: ",0Ah,0
	msg21 BYTE "abril 2023 Facturado: ",0Ah,0
	msg22 BYTE "IVA: ",0Ah,0
	msg23 BYTE "mayo 2023 Facturado: ",0Ah,0
	msg24 BYTE "IVA: ",0Ah,0

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