
	.global dibujar_frisk


dibujar_frisk:

    sub sp, sp, #8
	stur x30, [sp, #0]

    //// Frisk ////
    // Cabeza - Color: #3D120E (Pelo) - Color: #FFC90E (Cara/Piel) - Color #000000 (Ojos) 
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


    // Cara

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


    // Ojos

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
    mov x6, #259
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

    //// Reflejo de Frisk ////
    // Cuerpo - Color: #140605 (Contorno) - Color: #343D58 (Ropa Azul) - Color: #371E57 (Ropa Rosa)
    mov x1, #6
    mov x2, #8
    mov x5, #316
    mov x6, #283
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #314
    mov x6, #283
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #326
    mov x6, #283
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #8
    mov x5, #326
    mov x6, #283
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #312
    mov x6, #291
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #12
    mov x2, #2
    mov x5, #326
    mov x6, #291
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #16
    mov x5, #312
    mov x6, #291
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #320
    mov x6, #293
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #326
    mov x6, #293
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #14
    mov x5, #336
    mov x6, #293
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #320
    mov x6, #295
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #8
    mov x5, #314
    mov x6, #293
    movz x9, 0x34, lsl 16
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #8
    mov x5, #328
    mov x6, #293
    movz x9, 0x34, lsl 16
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #4
    mov x5, #320
    mov x6, #297
    movz x9, 0x34, lsl 16
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #22
    mov x2, #2
    mov x5, #314
    mov x6, #301
    movz x9, 0x37, lsl 16
    movk x9, 0x1E57, lsl 0
    bl cuadrado

    mov x1, #22
    mov x2, #2
    mov x5, #314
    mov x6, #303
    movz x9, 0x34, lsl 16
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #308    
    mov x6, #297
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #338
    mov x6, #297
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #20
    mov x2, #2
    mov x5, #314
    mov x6, #305
    movz x9, 0x37, lsl 16
    movk x9, 0x1E57, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #334
    mov x6, #305
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #299
    movz x9, 0x68, lsl 16
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #8
    mov x5, #340
    mov x6, #299
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #301
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #338
    mov x6, #303
    movz x9, 0x34, lsl 16
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #338
    mov x6, #307
    movz x9, 0x14, lsl 16
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #307
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #301
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #8
    mov x5, #308
    mov x6, #299
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #310
    mov x6, #299
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #310
    mov x6, #303
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado
    
    mov x1, #2
    mov x2, #2
    mov x5, #312
    mov x6, #307
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #314
    mov x6, #307
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #18
    mov x2, #2
    mov x5, #316
    mov x6, #307
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #334
    mov x6, #307
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #336
    mov x6, #307
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #312
    mov x6, #309
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #318
    mov x6, #309
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #10
    mov x2, #2
    mov x5, #320
    mov x6, #309
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #332
    mov x6, #309
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #330
    mov x6, #309
    movz x9, 0x34, lsl 16  
    movk x9, 0x3D58, lsl 0
    bl cuadrado

    mov x1, #16
    mov x2, #2
    mov x5, #318
    mov x6, #311
    movz x9, 0x14, lsl 16  
    movk x9, 0x0605, lsl 0
    bl cuadrado

    // Cabeza - Color: #150701 (Pelo) - Color: #684D10 (Cara/Piel) - Color: #000000 (Ojos)

    mov x1, #10
    mov x2, #26
    mov x5, #320
    mov x6, #313
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #9
    mov x2, #27
    mov x5, #320
    mov x6, #313
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #44
    mov x2, #10
    mov x5, #303
    mov x6, #319
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #40
    mov x2, #10
    mov x5, #305
    mov x6, #328
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #21
    mov x5, #323
    mov x6, #313
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #3
    mov x5, #325
    mov x6, #333
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #25
    mov x2, #1
    mov x5, #308
    mov x6, #338
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #9
    mov x2, #1
    mov x5, #311
    mov x6, #339
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #3
    mov x2, #5
    mov x5, #343
    mov x6, #315
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #10
    mov x5, #336
    mov x6, #312
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #8
    mov x2, #4
    mov x5, #328
    mov x6, #316
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #6
    mov x5, #305
    mov x6, #316
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #6
    mov x5, #315
    mov x6, #316
    movz x9, 0x15, lsl 16  
    movk x9, 0x0701, lsl 0
    bl cuadrado

    mov x1, #7
    mov x2, #12
    mov x5, #322
    mov x6, #320
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #7
    mov x2, #4
    mov x5, #316
    mov x6, #322
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #21
    mov x2, #8
    mov x5, #312
    mov x6, #324
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado
    
    mov x1, #4
    mov x2, #6
    mov x5, #333
    mov x6, #326
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #3
    mov x5, #337
    mov x6, #327
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #339
    mov x6, #328
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #332
    mov x6, #332
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #6
    mov x2, #2
    mov x5, #312
    mov x6, #332
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #2
    mov x5, #314
    mov x6, #334
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado

    mov x1, #2
    mov x2, #4
    mov x5, #310
    mov x6, #326
    movz x9, 0x68, lsl 16  
    movk x9, 0x4D10, lsl 0
    bl cuadrado
    
    mov x1, #4
    mov x2, #2
    mov x5, #314
    mov x6, #329
    movz x9, 0x00, lsl 16  
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #326
    mov x6, #329
    movz x9, 0x00, lsl 16  
    movk x9, 0x0000, lsl 0
    bl cuadrado

    mov x1, #4
    mov x2, #2
    mov x5, #320
    mov x6, #325
    movz x9, 0x00, lsl 16  
    movk x9, 0x0000, lsl 0
    bl cuadrado
    
    ldur x30, [sp, #0]
	add sp, sp, #8
ret

