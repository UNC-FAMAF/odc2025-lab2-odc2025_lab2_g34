	.equ SCREEN_WIDTH, 640
	.equ SCREEN_HEIGTH, 480
	.equ BITS_PER_PIXEL, 32
	
	
	// Dirección = Dirección de inicio + 4 * [x + (y * 640)]
calcular_dir_pixel:
	// x5 -> x
	// x6 -> y
	// x0 (aca devuelve la pos (x,y) 

	mov x0, SCREEN_WIDTH				// ancho de la pantalla
	mul x0, x0, x6					// y * 640
	add x0, x5, x0					// x + (y * 640)
	lsl x0, x0, #2					// 4 * [x + (y * 640)]
	add x0, x20, x0					// dir de inicio(del framebuffer) + 4 * [x + (y * 640)]
ret

	//es cuadrado pero serviria para rectangulos tmbn
cuadrado:
	// x1 -> ancho del cuadrado	
	// x2 -> altura del cuadrado
	// x5 -> x (esquina sup izq)
	// x6 -> y (esquina sup izq)
	// x9(color) x10 x11 x14 x15  
	
	sub sp, sp, #8					// lugar para LR ya que vamos a hacer otro bl
	stur x30, [sp, #0]				
	
	bl calcular_dir_pixel				// devuelve la dir en x0
	mov x14, x0					// x14 = dir inicial calculada
	
	mov x3, SCREEN_WIDTH				// x3 = 640
	lsl x3, x3, #2					// 2560 = 640*4, osea una fila entera			
	
	mov x11, x2					// x11 = altura
loop_filas:
	mov x10, x1					// x10 = ancho
	mov x15, x14					// guardamos dir inicial fila actual
	pintar_cuadrado:
		stur w9, [x14]				// el color que tiene w9 a x14
		add x14, x14, #4			// siguiente pixel
		sub x10, x10, #1			// ancho - 1
		cbnz x10, pintar_cuadrado		// hasta que el ancho sea 0, osea que termino de pintar esa fila
		mov x14, x15				// devolvemos dir inicial a x14
		add x14, x14, x3 			// pasamos a la dir inicial de la siguiente fila
		sub x11, x11, #1			// altura - 1
		cbnz x11, loop_filas			// hasta que altura sea 0
		
	ldur x30, [sp, #0]
	add sp, sp, #8
ret 



