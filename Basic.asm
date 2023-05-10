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

    jun22 DW 15300
    ivajun22 DD ?
    jul22 DW 10800
    ivajul22 DD ?
    ago22 DW 5000
    ivaago22 DD ?
    sep22 DW 500
    ivasep22 DD ?
    oct22 DW 6060
    ivaoct22 DD ?
    nov22 DW 7098
    ivanov22 DD ?
    dic22 DW 5000
    ivadic22 DD ?
    ene23 DW 10600
    ivaene23 DD ?
    feb23 DW 11060
    ivafeb23 DD ?
    mar23 DW 12000
    ivamar23 DD ?
    abr23 DW 15100
    ivaabr23 DD ?
    may23 DW 9100
    ivamay23 DD ?
    IvaT DW 20
    total DD 0 
    msg1 byte "Junio 2022 facturado:  IVA: %d", 0AH, 0
    msg2 byte "Julio 2022 facturado:  IVA: %d", 0AH, 0
    msg3 byte "Agosto 2022 facturado:  IVA: %d", 0AH, 0
    msg4 byte "Septiembre 2022 facturado:  IVA: %d", 0AH, 0
    msg5 byte "Octubre 2022 facturado:  IVA: %d", 0AH, 0
    msg6 byte "Noviembre 2022 facturadao:  IVA: %d", 0AH, 0
    msg7 byte "Diciembre 2022 facturadao:  IVA: %d", 0AH, 0
    msg8 byte "Enero 2023 facturadao:  IVA: %d", 0AH, 0
    msg9 byte "Febrero 2023 facturadao:  IVA: %d", 0AH, 0
    msg10 byte "Marzo 2023 facturadao:  IVA: %d", 0AH, 0
    msg11 byte "Abril 2023 facturadao:  IVA: %d", 0AH, 0
    msg12 byte "Mayo 2023 facturadao:  IVA: %d", 0AH, 0

.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib

extrn printf:near
extrn exit:near


public main
main proc

    mov eax,0
    mov ebx,0

    mov ax, jun22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivajun22,eax

    push dword ptr [ivajun22]
    push offset msg1
    call printf

    mov eax,0
    mov ebx,0

    mov ax, jul22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivajul22,eax

    push dword ptr [ivajul22]
    push offset msg2
    call printf

    mov eax,0
    mov ebx,0

    mov ax, ago22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivaago22,eax

    push dword ptr [ivaago22]
    push offset msg3
    call printf

    mov eax,0
    mov ebx,0

    mov ax, sep22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivasep22,eax

    push dword ptr [ivasep22]
    push offset msg4
    call printf

    mov eax,0
    mov ebx,0

    mov ax, oct22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivaoct22,eax

    push dword ptr [ivaoct22]
    push offset msg5
    call printf

    mov eax,0
    mov ebx,0

    mov ax, nov22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivanov22,eax

    push dword ptr [ivanov22]
    push offset msg6
    call printf


    mov eax,0
    mov ebx,0

    mov ax, dic22
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivadic22,eax

    push dword ptr [ivadic22]
    push offset msg7
    call printf

    mov eax,0
    mov ebx,0

    mov ax, ene23
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivaene23,eax

    push dword ptr [ivaene23]
    push offset msg8
    call printf

    mov eax,0
    mov ebx,0

    mov ax, feb23
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivafeb23,eax

    push dword ptr [ivafeb23]
    push offset msg9
    call printf

    mov eax,0
    mov ebx,0

    mov ax, mar23
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivamar23,eax

    push dword ptr [ivamar23]
    push offset msg10
    call printf

    mov eax,0
    mov ebx,0

    mov ax, abr23
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivaabr23,eax

    push dword ptr [ivaabr23]
    push offset msg11
    call printf

     mov eax,0
    mov ebx,0

    mov ax, may23
    mov bx, 20
    mov dx, 0
    div bx; Realizar division 
    mov ivamay23,eax

    push dword ptr [ivamay23]
    push offset msg12
    call printf



    push 0
    call exit


main endp
end