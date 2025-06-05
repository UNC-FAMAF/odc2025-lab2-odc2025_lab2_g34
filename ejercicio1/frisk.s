
	.global dibujar_frisk

	//// Frisk ////


dibujar_frisk:
    // Pelo - Color: #3D120E
    mov x1, #20
    mov x2, #2
    mov x5, #315
    mov x6, #220
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado
    
    mov x1, #26
    mov x2, #2
    mov x5, #312
    mov x6, #222
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #32
    mov x2, #2
    mov x5, #309
    mov x6, #224
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #36
    mov x2, #2
    mov x5, #307
    mov x6, #226
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #38
    mov x2, #2
    mov x5, #307
    mov x6, #228
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #40
    mov x2, #2
    mov x5, #305
    mov x6, #230
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #40
    mov x2, #2
    mov x5, #305
    mov x6, #232
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #42
    mov x2, #2
    mov x5, #305
    mov x6, #234
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #236
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #238
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #238
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #240
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #242
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #244
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #246
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #2
    mov x5, #303
    mov x6, #248
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #5
    mov x2, #3
    mov x5, #306
    mov x6, #250
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #25
    mov x2, #3
    mov x5, #315
    mov x6, #250
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #3
    mov x5, #343
    mov x6, #250
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #4
    mov x5, #336
    mov x6, #252
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #8
    mov x5, #320
    mov x6, #252
    movz x9, 0x3D, lsl 16
    movk x9, 0x120E, lsl 0
    bl cuadrado

    // Cara - Color: #FFC90E

    mov x1, #4
    mov x2, #28
    mov x5, #323
    mov x6, #232
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #20
    mov x2, #12
    mov x5, #312
    mov x6, #234
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #7
    mov x2, #2
    mov x5, #312
    mov x6, #232
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #2
    mov x5, #314
    mov x6, #230
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #325
    mov x6, #230
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #332
    mov x6, #232
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #10
    mov x5, #332
    mov x6, #234
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #10
    mov x5, #334
    mov x6, #234
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #4
    mov x5, #336
    mov x6, #238
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #339
    mov x6, #236
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #310
    mov x6, #240
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #316
    mov x6, #246
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #7
    mov x2, #4
    mov x5, #322
    mov x6, #246
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado
    
    mov x1, #11
    mov x2, #2
    mov x5, #322
    mov x6, #244
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado


    // Ojos - Color: #000000
    mov x1, #4
    mov x2, #2
    mov x5, #320
    mov x6, #242
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #326
    mov x6, #238
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #314
    mov x6, #238
    movz x9, 0x00, lsl 16
    movk x9, 0x0000, lsl 0
    bl cuadrado

    // Cuerpo - Color: #32100D (Contorno) - Color: #67A4E0 (Ropa Azul) - Color: #E200E2 (Ropa Rosa)

    mov x1, #16
    mov x2, #2
    mov x5, #318
    mov x6, #255
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #320
    mov x6, #257
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #18
    mov x2, #2
    mov x5, #316
    mov x6, #259
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #318
    mov x6, #257
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #330
    mov x6, #257
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #332
    mov x6, #257
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #334
    mov x6, #259
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #336
    mov x6, #259
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #259  /////////
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #312
    mov x6, #257
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #314
    mov x6, #259
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #259
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #10
    mov x5, #308
    mov x6, #261
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #16
    mov x5, #312
    mov x6, #261
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #310
    mov x6, #261
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #265
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #269
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #312
    mov x6, #259
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #20
    mov x2, #2
    mov x5, #314
    mov x6, #261
    movz x9, 0xE2, lsl 16
    movk x9, 0x00E2, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #16
    mov x5, #336
    mov x6, #261
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #338
    mov x6, #261
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #10
    mov x5, #340
    mov x6, #261
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #265
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #267
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #267
    movz x9, 0xFF, lsl 16
    movk x9, 0xC90E, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #269
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #22
    mov x2, #2
    mov x5, #314
    mov x6, #263
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #22
    mov x2, #2
    mov x5, #314
    mov x6, #265
    movz x9, 0xE2, lsl 16
    movk x9, 0x00E2, lsl 0
    bl cuadrado

    mov x1, #22
    mov x2, #4
    mov x5, #314
    mov x6, #267
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #4
    mov x5, #314
    mov x6, #271
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #320
    mov x6, #271
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #4
    mov x5, #328
    mov x6, #271
    movz x9, 0x67, lsl 16
    movk x9, 0xA4E0, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #12
    mov x5, #320
    mov x6, #271
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #12
    mov x5, #326
    mov x6, #271
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #314
    mov x6, #275
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #326
    mov x6, #275
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #6
    mov x5, #326
    mov x6, #277
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #326
    mov x6, #281
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #2
    mov x5, #314
    mov x6, #281
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #6
    mov x5, #316
    mov x6, #277
    movz x9, 0x32, lsl 16
    movk x9, 0x100D, lsl 0
    bl cuadrado

ret

