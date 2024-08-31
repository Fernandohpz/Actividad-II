; autor: Fernando Hernandez Perez

    ld B, 0x45        ; Carga el primer número 45 en B
    ld C, 0x54        ; Carga el segundo número 54 en C

    ; Sumar los números y ajustar el resultado a BCD
    ld A, B           ; Cargar el valor de B en A
    add A, C          ; Sumar el valor de C al acumulador A
    daa               ; Ajustar el acumulador A al formato BCD
    ld B, A           ; Guardar el resultado BCD en B

    ; Hasta este punto del programa fue hecho por mi razonamiento despues de aqui utlice herramientas de internet


    ; Separar las decenas y unidades del resultado BCD
    LD A, B           ; Cargar el resultado BCD en A
    AND 0xF0          ; Enmascarar para obtener solo las decenas (parte alta)
    SRL A             ; Desplazar 4 bits a la derecha
    SRL A             ; (una segunda vez para dividir por 16)
    SRL A             ; y ubicar las decenas en los 4 bits bajos
    SRL A
    LD H, A           ; Guardar las decenas en H

    LD A, B           ; Cargar el resultado BCD en A nuevamente
    AND 0x0F          ; Enmascarar para obtener solo las unidades (parte baja)
    LD L, A           ; Guardar las unidades en L

    ; Calcular las centenas
    XOR A             ; Limpiar A para calcular las centenas (no hay centenas en este caso)

    ; Fin del programa
    HALT              ; Detener la ejecución
'oshonsoft_bookmarks_and_breakpoints_info:,11
