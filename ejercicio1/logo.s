// logo_odc.s - dibuja el texto "OdC 2025", usando bloques de 5x5 con la funcion cuadrado

.globl dibujar_logo_odc

dibujar_logo_odc:
    
    mov x1, #5       // ancho del bloque
    mov x2, #5       // alto del bloque
    movz x9, 0xFFFFFF, lsl 0  // color blanco ARGB

    // letra o
    mov x5, #400; mov x6, #50; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #420; mov x6, #50; bl cuadrado
    mov x6, #90; bl cuadrado

    // letra d
    mov x5, #440; mov x6, #50; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #460; mov x6, #70; bl cuadrado
    mov x6, #50; bl cuadrado

    // letra c
    mov x5, #480; mov x6, #50; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #500; mov x6, #50; bl cuadrado
    mov x6, #90; bl cuadrado

    // num 2
    mov x5, #540; mov x6, #50; bl cuadrado
    mov x5, #560; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x5, #540; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #560; bl cuadrado

    // num 0
    mov x5, #580; mov x6, #50; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #600; mov x6, #50; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #580; mov x6, #70; bl cuadrado
    mov x5, #600; bl cuadrado

    // num 2
    mov x5, #620; mov x6, #50; bl cuadrado
    mov x5, #640; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x5, #620; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #640; bl cuadrado

    // num 5
    mov x5, #660; mov x6, #50; bl cuadrado
    mov x6, #70; bl cuadrado
    mov x6, #90; bl cuadrado
    mov x5, #680; mov x6, #50; bl cuadrado
    mov x6, #90; bl cuadrado

    ret
