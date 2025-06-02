	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	
	.include "funciones.s"
	
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
 		

	movz x10, 0x1C	, lsl 16
	movk x10, 0x7389, lsl 00

	mov x2, SCREEN_HEIGH         // Y Size
	
loop1:
	mov x1, SCREEN_WIDTH         // X Size
loop0:
	stur w10,[x0]		// Colorear el pixel N
	add x0,x0,4		// Siguiente pixel
	sub x1,x1,1		// Decrementar contador X
	cbnz x1,loop0		// Si no terminó la fila, salto
	sub x2,x2,1		// Decrementar contador Y
	cbnz x2,loop1		// Si no es la última fila, salto


	// y pensar q pasa cuando ponemos ancho que se pasa de pixel 639 si el cuadrado esta muy a la derecha capaz
	mov x1, #100
	mov x2, #10
	mov x5, #50
	mov x6, #50
	movz x9, 0xFF	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado
	
	movz x9, 0x21	,lsl 16
	movk x9, 0xE903	,lsl 0
	mov x4, #40					// radio
	mov x5, #200					// x
	mov x6, #200					// y
	bl circulo

	
	
	// Infinite Loop
infloop:
	b infloop
