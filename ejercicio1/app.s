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

	// Fondo - Color: #000000
	mov x1, #SCREEN_WIDTH
	mov x2, #SCREEN_HEIGH
	mov x5, #0
	mov x6, #0
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	// Suelo - Color: #141A4A
	mov x1, #SCREEN_WIDTH
	mov x2, #120
	mov x5, #240
	mov x6, #240
	movz x9, 0x14	, lsl 16
	movk x9, 0x1A4A , lsl 0
	bl cuadrado

	// Pared - Color: #030324
	mov x1, #SCREEN_WIDTH
	mov x2, #120
	mov x5, #120
	mov x6, #120
	movz x9, 0x03	, lsl 16
	movk x9, 0x0324 , lsl 0
	bl cuadrado

	// Charcos de agua #1 - Color: #00000E (Abajo del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #40					// radio
	mov x5, #320					// x
	mov x6, #300					// y
	bl circulo
	
	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 66 HASTA LA 236 ES LA FORMACIÓN DEL CHARCO #1 (es muy repetitivo) 
	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #38				// radio
	mov x5, #340					// x
	mov x6, #300					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #34				// radio
	mov x5, #360					// x
	mov x6, #300					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #30				// radio
	mov x5, #310					// x
	mov x6, #290					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #38				// radio
	mov x5, #300					// x
	mov x6, #300					// y
	bl circulo

	// Forma del charco
	mov x1, #55
	mov x2, #30
	mov x5, #225
	mov x6, #300
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #225					// x
	mov x6, #310					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #265					// x
	mov x6, #310					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #278					// x
	mov x6, #317					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #225					// x
	mov x6, #314					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #215					// x
	mov x6, #312					// y
	bl circulo

	// Forma del charco
	mov x1, #90
	mov x2, #65
	mov x5, #1
	mov x6, #265
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	mov x1, #90
	mov x2, #35
	mov x5, #91
	mov x6, #280
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #14				// radio
	mov x5, #91				// x
	mov x6, #280					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #14				// radio
	mov x5, #105				// x
	mov x6, #285					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #12				// radio
	mov x5, #120				// x
	mov x6, #290					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #14				// radio
	mov x5, #91				// x
	mov x6, #315					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #14				// radio
	mov x5, #105				// x
	mov x6, #308					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #14				// radio
	mov x5, #180				// x
	mov x6, #300					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #12				// radio
	mov x5, #190				// x
	mov x6, #305					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #10				// radio
	mov x5, #200				// x
	mov x6, #310					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #13				// radio
	mov x5, #176				// x
	mov x6, #293					// y
	bl circulo

	// Charcos de agua #2 - Color: #00000E (El primero a la derecha del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #30				// radio
	mov x5, #480					// x
	mov x6, #280					// y
	bl circulo

	// Charcos de agua #3 - Color: #00000E (El segundo a la derecha del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #23				// radio
	mov x5, #560					// x
	mov x6, #325					// y
	bl circulo
	
	// Charcos de agua #4 - Color: #00000E (El tercero a la derecha del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #639					// x
	mov x6, #295					// y
	bl circulo
	
	// Charcos de agua #3 - Color: #00000E (El pequeño a la izquierda del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #10				// radio
	mov x5, #180					// x
	mov x6, #260					// y
	bl circulo

	// Infinite Loop
infloop:
	b infloop
