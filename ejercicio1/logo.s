// logo_odc.s - dibuja el texto "OdC 2025", usando bloques de 5x5 con la funcion cuadrado

.globl dibujar_logo_odc

dibujar_logo_odc:
      sub sp, sp, #8
      stur x30, [sp, #0]
      
      movz x9, 0xFF  , lsl 16
      movk x9, 0xFFFF, lsl 0  // color blanco ARGB

           // letra o
      mov x1, #5
      mov x2, #5
      mov x5, #400
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #400
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #400
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #420
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #420
      mov x6, #90
      bl cuadrado

      // letra d
      mov x1, #5
      mov x2, #5
      mov x5, #440
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #440
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #440
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #460
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #460
      mov x6, #50
      bl cuadrado

      // letra c
      mov x1, #5
      mov x2, #5
      mov x5, #480
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #480
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #480
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #500
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #500
      mov x6, #90
      bl cuadrado

      // num 2
      mov x1, #5
      mov x2, #5
      mov x5, #540
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #560
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #560
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #540
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #540
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #560
      mov x6, #90
      bl cuadrado

      // num 0
      mov x1, #5
      mov x2, #5
      mov x5, #580
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #580
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #600
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #600
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #580
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #600
      mov x6, #70
      bl cuadrado

      // num 2
      mov x1, #5
      mov x2, #5
      mov x5, #620
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #640
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #640
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #620
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #620
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #640
      mov x6, #90
      bl cuadrado

      // num 5
      mov x1, #5
      mov x2, #5
      mov x5, #660
      mov x6, #50
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #660
      mov x6, #70
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #660
      mov x6, #90
      bl cuadrado
      mov x1, #5
      mov x2, #5
      mov x5, #680
      mov x6, #50
      bl cuadrado
      
      mov x1, #5
      mov x2, #5
      mov x5, #680
      mov x6, #90
      bl cuadrado
      
        ldur x30, [sp, #0]
	add sp, sp, #8
ret
