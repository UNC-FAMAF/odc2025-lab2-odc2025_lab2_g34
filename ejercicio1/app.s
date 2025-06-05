	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

    .include "logo_odc.s"

	
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

	// Fondo - Color: #000000
	mov x1, #SCREEN_WIDTH
	mov x2, #SCREEN_HEIGH
	mov x5, #0
	mov x6, #0
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	// Pared - Color: #030324
	mov x1, #SCREEN_WIDTH
	mov x2, #120
	mov x5, #120
	mov x6, #120
	movz x9, 0x03	, lsl 16
	movk x9, 0x0324 , lsl 0
	bl cuadrado
	
	// Suelo - Color: #141A4A
	mov x1, #SCREEN_WIDTH
	mov x2, #124
	mov x5, #0
	mov x6, #240
	movz x9, 0x14	, lsl 16
	movk x9, 0x1A4A , lsl 0
	bl cuadrado


	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 59 HASTA LA 478 ES LA ELABORACION DE LOS CHARCOS DE AGUA
	// Charcos de agua #1 - Color: #00000E (Abajo del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #40					// radio
	mov x5, #320					// x
	mov x6, #300					// y
	bl circulo
	
	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 68 HASTA LA 245 ES LA FORMACIÓN DEL CHARCO #1 (es muy repetitivo) 
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
	mov x4, #20				// radio
	mov x5, #480					// x
	mov x6, #280					// y
	bl circulo

	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 248 HASTA LA 328 ES LA FORMACIÓN DEL CHARCO #2 (es muy repetitivo)
	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #18				// radio
	mov x5, #490					// x
	mov x6, #280					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #18				// radio
	mov x5, #470					// x
	mov x6, #280					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #17				// radio
	mov x5, #500					// x
	mov x6, #280					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #17				// radio
	mov x5, #460					// x
	mov x6, #282					// y
	bl circulo

	// Forma del charco
	mov x1, #40
	mov x2, #20
	mov x5, #475
	mov x6, #261
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15			// radio
	mov x5, #510					// x
	mov x6, #275					// y
	bl circulo

	// Forma del charco
	mov x1, #50
	mov x2, #20
	mov x5, #430
	mov x6, #280
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #13			// radio
	mov x5, #430					// x
	mov x6, #285					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #13			// radio
	mov x5, #440					// x
	mov x6, #285					// y
	bl circulo

	// Charcos de agua #3 - Color: #00000E (El segundo a la derecha del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #23				// radio
	mov x5, #560					// x
	mov x6, #325					// y
	bl circulo

	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 331 HASTA LA 379 ES LA FORMACIÓN DEL CHARCO #3 (es muy repetitivo)
	// Forma del charco
	mov x1, #70
	mov x2, #27
	mov x5, #550
	mov x6, #320
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #609					// x
	mov x6, #333					// y
	bl circulo

	// Forma del charco
	mov x1, #60
	mov x2, #27
	mov x5, #550
	mov x6, #310
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #12				// radio
	mov x5, #610					// x
	mov x6, #323					// y
	bl circulo
	
	// Charcos de agua #4 - Color: #00000E (El tercero a la derecha del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #639					// x
	mov x6, #295					// y
	bl circulo
	
	// Charcos de agua #5 - Color: #00000E (El pequeño a la izquierda del personaje)
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #10				// radio
	mov x5, #180					// x
	mov x6, #260					// y
	bl circulo

	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 382 HASTA LA 478 ES LA FORMACIÓN DEL CHARCO #5 (es muy repetitivo)
	// Forma del charco
	mov x1, #30
	mov x2, #12
	mov x5, #180
	mov x6, #259
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado

	// Forma del charco
	mov x1, #30
	mov x2, #12
	mov x5, #150
	mov x6, #249
	movz x9, 0x00	, lsl 16
	movk x9, 0x000E	, lsl 0
	bl cuadrado
	
	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #9				// radio
	mov x5, #185					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #9				// radio
	mov x5, #175					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #8				// radio
	mov x5, #190					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #9				// radio
	mov x5, #170					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #7				// radio
	mov x5, #195					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #8				// radio
	mov x5, #165					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #7				// radio
	mov x5, #200					// x
	mov x6, #260					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #7				// radio
	mov x5, #160					// x
	mov x6, #260					// y
	bl circulo
	
	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #7				// radio
	mov x5, #210					// x
	mov x6, #264					// y
	bl circulo

	// Forma del charco
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #7				// radio
	mov x5, #150					// x
	mov x6, #256					// y
	bl circulo

	////// luna //////
	
	movz x9, 0xBA	,lsl 16
	movk x9, 0xBABA	,lsl 0
	mov x4, #50					// radio
	mov x5, #530					// x
	mov x6, #60					// y
	bl circulo
	
	movz x9, 0x00	,lsl 16
	movk x9, 0x0000	,lsl 0
	mov x4, #40					// radio
	mov x5, #550					// x
	mov x6, #65					// y
	bl circulo

	//// Detalles de los bordes Pered & Suelo ////
	// Detalle borde Pared - Color: #393280
	mov x1, #680
	mov x2, #10
	mov x5, #0
	mov x6, #120
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	// ⚠️⚠️⚠️ DE LA LINEA DE CODIGO 517 HASTA LA 2632 ES LA FORMACION DE LOS SALIENTES SOMBRAS Y CONTORNOS DEL BORDE DE LA PARED Y EL SUELO
	// Salientes del borde 
	
	mov x1, #8
	mov x2, #3
	mov x5, #0
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #40
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #80
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #120
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #160
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #200
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #240
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #280
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #320
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #360
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #400
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #440
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #480
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #520
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #560
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #3
	mov x5, #600
	mov x6, #117
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	// Sombreadores - Color: #191541
	// Sombras entre los salientes
	
	mov x1, #32
	mov x2, #2
	mov x5, #8
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #48
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #88
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #128
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #168
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #208
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #248
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #288
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #328
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #368
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #408
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #448
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #488
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #528
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #568
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #32
	mov x2, #2
	mov x5, #608
	mov x6, #118
	movz x9, 0x19 , lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	// Sombras por encima de los salientes
	
	mov x1, #8
	mov x2, #2
	mov x5, #0
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #40
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #80
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #120
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #160
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #200
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #240
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #280
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #320
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #360
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #400
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #440
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #480
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #520
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #560
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #600
	mov x6, #115
	movz x9, 0x19	, lsl 16
	movk x9, 0x1541	, lsl 0
	bl cuadrado

	// Sombras por debajo de los salientes - Color: #1C1368

	mov x1, #8
    mov x2, #2
    mov x5, #0
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #40
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #80
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #120
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #160
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #200
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #240
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #280
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #320
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #360
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #400
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #440
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #480
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #520
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #560
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #600
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #640
    mov x6, #128
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

	mov x1, #640
    mov x2, #2
    mov x5, #0
    mov x6, #129
    movz x9, 0x1C       , lsl 16
    movk x9, 0x1368     , lsl 0
    bl cuadrado

	// Detalle borde Suelo - Color: #393280
	mov x1, #680
	mov x2, #10
	mov x5, #0
	mov x6, #360
	movz x9, 0x39	, lsl 16
	movk x9, 0x3280	, lsl 0
	bl cuadrado

	// Detalle borde Suelo Superior - Color: #141A4A
	mov x1, #2
    mov x2, #1
    mov x5, #0
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #5
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #30
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #35
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #60
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #65
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #90
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #95
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #120
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #125
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #150
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #155
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #180
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #185
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #210
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #215
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #240
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #245
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #270
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #275
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #300
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #305
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #330
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #335
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #360
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #365
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #390
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #395
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #420
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #425
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #450
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #455
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #480
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #485
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #510
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #515
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #540
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #545
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #570
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #575
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #600
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #605
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #1
    mov x5, #630
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #1
    mov x5, #635
    mov x6, #239
    movz x9, 0x14 , lsl 16
    movk x9, 0x1A4A , lsl 0
    bl cuadrado

	// Contorno superior del Borde del Suelo - Color: #000000

	mov x1, #12
	mov x2, #2
	mov x5, #0
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #12
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #20
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #26
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #34
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #46
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #54
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #60
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #68
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #80
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #88
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #94
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #102
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #114
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #122
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #128
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #136
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #148
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #156
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #162
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #170
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #182
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #190
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #196
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
	mov x2, #2
	mov x5, #204
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #216
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #6
	mov x2, #2
	mov x5, #224
	mov x6, #359
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #8
	mov x2, #2
	mov x5, #230
	mov x6, #358
	movz x9, 0x00	, lsl 16
	movk x9, 0x0000	, lsl 0
	bl cuadrado

	mov x1, #12
    mov x2, #2
    mov x5, #238
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #250
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #258
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #264
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #272
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #284
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #292
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #298
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #306
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #318
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #326
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #332
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #340
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #352
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #360
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #366
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #374
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #386
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #394
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #400
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #408
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #420
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #428
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #434
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #442
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #454
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #462
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #468
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #476
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #488
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #496
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #502
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

	mov x1, #12
    mov x2, #2
    mov x5, #510
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #522
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #530
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #536
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #544
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #556
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #564
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #570
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #578
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #590
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #598
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #604
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #612
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #624
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #632
    mov x6, #359
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #638
    mov x6, #358
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

	// Contorno inferior del Borde del Suelo - Color:  #1B1362

	mov x1, #12
    mov x2, #2
    mov x5, #0
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #12
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #20
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #26
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #34
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #46
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #54
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #60
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #68
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #80
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #88
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #94
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #102
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #114
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #122
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #128
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #136
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #148
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #156
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #162
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #170
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #182
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #190
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #196
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #204
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #216
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #224
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #230
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #238
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #250
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #258
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #264
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #272
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #284
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #292
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #298
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #306
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #318
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #326
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #332
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #340
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #352
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #360
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #366
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #374
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #386
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #394
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #400
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #408
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #420
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #428
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #434
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #442
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #454
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #462
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #468
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #476
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #488
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #496
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #502
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #510
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #522
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #530
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #536
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #544
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #556
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #564
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #570
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #578
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #590
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #598
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #604
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #612
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #624
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #632
    mov x6, #370
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #638
    mov x6, #369
    movz x9, 0x1B, lsl 16
    movk x9, 0x1362, lsl 0
    bl cuadrado
		
		///// gotas /////
	
	movz x9, 0xA1	,lsl 16
	movk x9, 0xA1FF	,lsl 0
	bl fn_gotas
	
		//// Frisk ////

	bl dibujar_frisk

    // logo de OdC 2025
    bl dibujar_logo_odc

	// Infinite Loop
infloop:
	b infloop
