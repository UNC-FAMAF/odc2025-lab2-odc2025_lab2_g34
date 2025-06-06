	.data
	pos_gotas: .word 110,15, 220,30, 240,50, 62,52, 302,21, 380,27, 156,37, 130,93, 206,105, 295,105, 29,151, 83,147, 147,157, 112,210, 53,220, 180,177, 229,143, 346,76, 423,56, 400,110, 374,166, 257,199, 213,235, 460,141, 478,16, 544,45, 603,9, 585,95, 526,187, 483,220, 414,232, 560,206, 610,166, 601,244 
	
	pos_gotas_frame2: .word 110,35, 220,50, 240,70, 62,72, 302,41, 380,47, 156,57, 130,113, 206,125, 295,125, 29,171, 83,167, 147,177, 112,230, 53,240, 180,197, 229,163, 346,96, 423,76, 400,130, 374,186, 257,219, 213,255, 460,161, 478,36, 544,65, 603,29, 585,115, 526,207, 483,240, 414,252, 560,226, 610,186, 601,264, 22,13, 71,20, 136,39, 184,12, 260,12, 325,27, 511,10, 402,11, 566,11
	
	pos_gotas_frame3: .word 110,65, 220,80, 240,100, 62,102, 302,71, 380,77, 156,87, 130,143, 206,155, 295,155, 29,201, 83,197, 147,207, 112,260, 53,270, 180,227, 229,193, 346,126, 423,106, 400,160, 374,216, 257,249, 213,285, 460,191, 478,66, 544,95, 603,59, 585,145, 526,237, 483,270, 414,282, 560,256, 610,216, 601,294, 118,35, 228,50, 248,70, 70,72, 310,41, 388,47, 164,57, 138,113, 214,125, 303,125, 37,171, 91,167, 155,177, 120,230, 61,240, 188,197, 237,163, 354,96, 431,76, 408,130, 382,186, 265,219, 221,255, 468,161, 486,36, 552,65, 611,29, 593,115, 534,207, 491,240, 422,252, 568,226, 618,186, 609,264, 30,13, 79,20, 144,39, 192,12, 268,12, 333,27, 519,10, 410,11, 574,11

	
	// se agrupan de a dos, el primero para x segundo para y por ej 62, 52 es x=52, y=62 y asi
	// despues se recorre el array haciendo indice * 8 osea lsl #3
	
	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32
	.equ CANT_GOTAS_F1,	34
	.equ CANT_GOTAS_F2,	43
	.equ CANT_GOTAS_F3,	77
	.globl main
	
	.text
main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

loop_frames:
	///// gotas frame 1/////

	bl fondo

	bl dibujar_frisk

	ldr x3, =pos_gotas
	add x21, xzr, xzr
	add x21, x21, CANT_GOTAS_F1
	movz x9, 0x96	,lsl 16
	movk x9, 0x99B5	,lsl 0
	bl fn_gotas
	
	sub sp, sp, #24
	stur x4, [sp, #0]
	stur x5, [sp, #8]
	stur x6, [sp, #16]
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #15				// radio
	mov x5, #502					// x
	mov x6, #285					// y
	bl circulo
	mov x4, #20				// radio
	mov x5, #175					// x
	mov x6, #278					// y
	bl circulo
	ldur x6, [sp, #16]
	ldur x5, [sp, #8]
	ldur x4, [sp, #0]
	add sp, sp, #24
		
	bl fn_delay
	
	///// gotas frame 2 /////
	
	bl fondo			// redibuja fondo para borrar las gotas viejas
	
	bl dibujar_frisk		// mismo q fondo
	
	ldr x3, =pos_gotas_frame2
	add x21, xzr, xzr
	add x21, x21, CANT_GOTAS_F2		
	movz x9, 0x96	,lsl 16
	movk x9, 0x99B5	,lsl 0
	bl fn_gotas
	
	sub sp, sp, #24
	stur x4, [sp, #0]
	stur x5, [sp, #8]
	stur x6, [sp, #16]
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #20				// radio
	mov x5, #502					// x
	mov x6, #285					// y
	bl circulo
	mov x4, #20				// radio
	mov x5, #175					// x
	mov x6, #278					// y
	bl circulo
	ldur x6, [sp, #16]
	ldur x5, [sp, #8]
	ldur x4, [sp, #0]
	add sp, sp, #24
	
	bl fn_delay
	
	///// gotas frame 3 /////
	
	bl fondo
	
	bl dibujar_frisk
	
	ldr x3, =pos_gotas_frame3
	add x21, xzr, xzr
	add x21, x21, CANT_GOTAS_F3
	movz x9, 0x96	,lsl 16
	movk x9, 0x99B5	,lsl 0
	bl fn_gotas
	
	sub sp, sp, #24
	stur x4, [sp, #0]
	stur x5, [sp, #8]
	stur x6, [sp, #16]
	movz x9, 0x00	,lsl 16
	movk x9, 0x000E	,lsl 0
	mov x4, #30				// radio
	mov x5, #502					// x
	mov x6, #293					// y
	bl circulo
	mov x4, #30				// radio
	mov x5, #175					// x
	mov x6, #278					// y
	bl circulo
	ldur x6, [sp, #16]
	ldur x5, [sp, #8]
	ldur x4, [sp, #0]
	add sp, sp, #24
	
	bl fn_delay
	
	b loop_frames
 	
	// Infinite Loop
infloop:
	b infloop
