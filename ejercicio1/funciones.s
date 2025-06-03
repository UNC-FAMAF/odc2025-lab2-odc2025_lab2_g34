	.equ SCREEN_WIDTH, 640
	.equ SCREEN_HEIGHT, 480
	.equ BITS_PER_PIXEL, 32
	
	
	// Dirección = Dirección de inicio + 4 * [x + (y * 640)]
calcular_dir_pixel:
	// x5 -> x
	// x6 -> y
	// x0 (aca devuelve la pos (x,y))

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


	//hacer un cuadrado que encierre al circulo, osea el ancho del cuadrado es el diametro del circulo (radio*2)
	// el proceso seria con el centro calcular la posicion con calcular_dir_pixel, despues calcular la distancia
	// (x5-x10)²+(x6-x11)² <= r² 
	// x10 = x5-r 
	// x11 = x6-r 
	// asi y (x5-r,x6-r) es arriba izq del "cuadrado que encierra al circulo"
	// y de ahi empieza a hacer los triangulos para comparar su hipotenusa con r² (r² seria la hipotenusa de los triang q entran en el circulo)
	
circulo:
	// x4 -> radio 
	// x5 -> x
	// x6 -> y
	// (x5,x6) = centro del circulo
	// x10 -> pos actual x
	// x11 -> pos actual y
	// x9 color
	// x12 x13 x14 x15
	
	sub sp, sp, #8
	stur x30, [sp, #0]
	
	subs x10, x5, x4				// x10 = x5-r
	b.lt pos_minima_x				// si x5 < x4, osea x10 < 0 
	b bien
	
	pos_minima_x:					//porq si da negativo entonces se va de la pantalla, plt ponemos la minima pos osea 0
		sub x10, x10, x10			
		b bien
	
	bien:
		subs x11, x6, x4			// x11 = x6-r
		b.lt pos_minima_y
		b bienbien
		
	pos_minima_y:
		sub x11, x11, x11
		
	bienbien:
		add x21, x4, x4				// r+r = diametro    osea el largo de la fila del cuadrado que contiene al circulo
		mov x22, x21				// largo de filas restantes
		mov x26, x22				// para reiniciar x21 
		mov x23, x10				// x inicial (que se va modificando)
		mov x24, x11				// y inicial (que se va modificando)
		

loop_y: 
	cbz x22, end_circulo				// cuando x22 = 0 entonces no hay mas filas, plt se termino el circulo
	mov x23, x10					// reset x inicial al inicio de la fila
	mov x21, x26					// reset largo del diametro

					
	loop_x:
		cbz x21, next_fila			// terminamos la fila actual	
		
		mul x12, x4, x4				// r*r
		sub x13, x5, x23			// xcentro - xactual
		sub x14, x6, x24			// ycentro - yactual
		mul x13, x13, x13				
		mul x14, x14, x14
		add x15, x13, x14			// (x5-x10)²+(x6-x11)²

		cmp x15, x12 				// si (x5-x10)²+(x6-x11)² <= r²
		b.gt next_pixel				// si el pixel esta afuera del circulo entonces no lo pintamos
		bl pintar_pixel				// si esta adentro

next_pixel:
	add x23, x23, #1				// siguiente x osea columna de la fila actual
	sub x21, x21, #1				// decrementar el contador de columna de la fila actual
	b loop_x
	
next_fila:
	add x24, x24, #1				// ir a la siguiente fila
	sub x22, x22, #1				// decrementar en 1 el contador de filas
	b loop_y
	
end_circulo:
	ldur x30, [sp, #0]
	add sp, sp, #8
ret

pintar_pixel:
	// x5 -> x
	// x6 -> y
	// x9 color
	
	sub sp, sp, #32
	stur x30, [sp, #0]
	stur x5, [sp, #8]
	stur x6, [sp, #16]
	
	mov x5, x23
	mov x6, x24
	
	bl calcular_dir_pixel
	
	stur w9, [x0]
	
	ldur x6, [sp, #16]
	ldur x5, [sp, #8]
	ldur x30, [sp, #0]
	add sp, sp, #32
ret
