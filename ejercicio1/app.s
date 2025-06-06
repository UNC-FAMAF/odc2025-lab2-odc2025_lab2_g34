	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	
	bl fondo
	
	//// Frisk ////

	bl dibujar_frisk
		
	///// gotas /////
	
	movz x9, 0x96	,lsl 16
	movk x9, 0x99B5	,lsl 0
	bl fn_gotas

	// Infinite Loop
infloop:
	b infloop
