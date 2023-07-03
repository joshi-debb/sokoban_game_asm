NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
.MODEL SMALL
.RADIX 16
.STACK
.DATA
dim_sprite_jug    	db   08, 08

data_sprite_jug   	db   2c, 2c, 27, 0a, 2, 0a, 2c, 2c
                  	db   2c, 27, 0a, 0ff, 0a, 0a, 0a, 0a
                  	db   2c, 2c, 0f, 0f, 0a, 0a, 0a, 0a
                  	db   2c, 27, 0f, 0f, 0a, 0a, 0a, 0a
                  	db   2c, 2b, 27, 1d, 0f, 0f, 0f, 2c
                  	db   2, 27, 2, 2, 1d, 1d, 2, 2c
                  	db   2c, 2, 0a, 2, 1d, 1d, 2, 2
                  	db   2c, 2c, 27, 27, 2c, 4, 4, 2c

dim_sprite_flcha  	db   08, 08

data_sprite_flcha   db   00, 00, 03, 00, 00, 00, 00, 00
                    db   00, 00, 03, 03, 00, 00, 00, 00
                    db   03, 03, 03, 03, 03, 00, 00, 00
                    db   03, 03, 03, 03, 03, 03, 00, 00
                    db   03, 03, 03, 03, 03, 03, 00, 00
                    db   03, 03, 03, 03, 03, 00, 00, 00
                    db   00, 00, 03, 03, 00, 00, 00, 00
                    db   00, 00, 03, 00, 00, 00, 00, 00

dim_sprite_vacio  db   08, 08

data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00

dim_sprite_suelo  db   08, 08

data_sprite_suelo db   2c, 2c, 2c, 2b, 2b, 2c, 2c, 2c
                  db   2c, 2b, 2c, 2b, 2b, 2c, 2c, 2c
                  db   2c, 2c, 2c, 2c, 2c, 2c, 2b, 2c
                  db   2c, 2c, 2c, 2c, 2c, 2c, 2c, 2c
                  db   2c, 2b, 2b, 2c, 2b, 2b, 2c, 2c
                  db   2c, 2b, 2b, 2c, 2b, 2b, 2c, 2c
                  db   2c, 2c, 2c, 2c, 2c, 2c, 2c, 2b
                  db   2c, 2c, 2b, 2c, 2c, 2c, 2c, 2c

dim_sprite_pared  db   08, 08

data_sprite_pared db   0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8
                  db   0b8, 8a, 8a, 8a, 0b8, 8a, 8a, 0b8
				  db   0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8
				  db   8a, 8a, 0b8, 8a, 8a, 8a, 0b8, 8a
				  db   0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8
				  db   0b8, 8a, 8a, 8a, 0b8, 8a, 8a, 0b8
				  db   0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8, 0b8
				  db   8a, 8a, 0b8, 8a, 8a, 8a, 0b8, 8a
                  

dim_sprite_caja   db   08, 08

data_sprite_caja  db  2c, 2c, 2c, 2c, 2c, 2c, 2c, 2c
                  db  2c, 2c, 2c, 0ff, 0ff, 2c, 2c, 2c
				  db  2c, 2c, 0ff, 0a, 0f, 0ff, 2c, 2c
				  db  2c, 0ff, 0a, 0f, 0f, 0f, 0ff, 2c
				  db  2c, 0ff, 0f, 0f, 0a, 0a, 0ff, 2c
				  db  2c, 0ff, 0a, 0f, 0f, 0f, 0ff, 2c
				  db  2c, 2c, 0ff, 0a, 0f, 0ff, 2c, 2c
				  db  2c, 2c, 2c, 0ff, 0ff, 2c, 2c, 2c

dim_sprite_obj    db   08, 08

data_sprite_obj   db  2c, 2c, 2c, 8a, 8a, 2c, 2c, 2c
                  db  2c, 2c, 2c, 2c, 8a, 2c, 2c, 2c
				  db  2c, 27, 27, 27, 0f, 27, 27, 2c
				  db  27, 0f, 0f, 27, 27, 27, 27, 27
				  db  27, 0f, 27, 27, 27, 27, 27, 27
				  db  27, 27, 27, 27, 27, 27, 27, 27
				  db  2c, 27, 27, 27, 27, 0f, 27, 2c
				  db  2c, 2c, 27, 27, 0f, 27, 2c, 2c

mapa              db   3e8 dup (0)


mis_datos_uni 	  db "UNIVERSIDAD DE SAN CARLOS DE GUATEMALA$"
mis_datos_fac 	  db "FACULTAD DE INGENIERIA$"
mis_datos_esc 	  db "ESCUELA DE VACACIONES$"
mis_datos_cur 	  db "LAB. ARQUITECTURA DE COMPUTADORES$"
mis_datos_cur2	  db "Y ENSAMBLADORES 1$"
mis_datos_sec 	  db "SECCION N$"

mis_datos_nom	  db "JUAN JOSUE ZULETA BEB$"
mis_datos_car	  db "202006353$"

tag_error_archivo db "ERROR AL ABRIR EL ARCHIVO$"
tag_error_archivo2 db "NO EXISTE SENTENCIA DE JUGADOR$"
tag_error_archivo3 db "NO COINCIDEN LA CANTIDAD DE$"
tag_error_archivo4 db "SENTENCIAS DE CAJAS Y OBJETIVOS$"


iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"

iniciales     db "JJZB - 202006353$"
cronometro 	  db "00:00:00$"
puntaje 	  db "0000$"

cont_punt_mov db 0

;;CONFIGURACION
configuracion_titulo db "CONTROLES ACTUALES$"
configuracion_titulo2 db "INGRESAR NUEVOS CONTROLES$"
configuracion_arriba db "ARRIBA:$"
configuracion_abajo db "ABAJO:$"
configuracion_izquierda db "IZQUIERDA:$"
configuracion_derecha db "DERECHA:$"

configuracion_guardar db "CAMBIAR CONTROLES$"
configuracion_salir db "REGRESAR$"

configuracion_nueva_arriba db "FLECHA ARRIBA$"
configuracion_nueva_abajo db "FLECHA ABAJO$"
configuracion_nueva_izquierda db "FLECHA IZQUIERDA$"
configuracion_nueva_derecha db "FLECHA DERECHA$"

menu_pausa_titulo  db "CONTINUAR$"
menu_pausa_titulo2 db "REGRESAR$"

ask_filename  db "INGRESE NOMBRE DE ARCHIVO: ",0a,0a,20,"$"

;; JUEGO
xJugador      db 0
yJugador      db 0
puntos        dw 0
;; MENÚS
opcion        db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4b
control_derecha   db  4d
;; NIVELES
nivel_cero        db "NIV.00",00
nivel_uno         db "NIV.01",00
nivel_dos         db "NIV.02",00

cont_sent_jug 	  db 0
cont_sent_caj  	  db 0
cont_sent_obj 	  db 0

niv_by_keyboard   db 20 dup (00)

sesion_activa     db 0

;;buffer general
buffer_entrada  db 20, 00
            	db 20 dup (00)

handle_nivel      dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
.CODE
.STARTUP

mov AH, 00
mov AL, 13
int 10

call mis_datos_en_pantalla

mov CX, 15
prebas:
	call delay
	loop prebas

inicio:	
	call menu_principal
	mov AL, [opcion]
	;; > INICIAR JUEGO
	cmp AL, 0
	je cargar_un_nivel_auto
	cmp AL, 1
	je cargar_un_nivel
	cmp AL, 2
	je inicio
	cmp AL, 3
	je aceptar_opciones_menu_conf
	cmp AL, 4
	je fin

aceptar_opciones_menu_pause:
	mov sesion_activa, 01
	call menu_pause
	mov AL, [opcion]
	cmp AL, 0
	je ciclo_juego
	cmp AL, 1
	je inicio

aceptar_opciones_menu_conf:
	call menu_conf
	mov AL, [opcion]
	cmp AL, 0
	je configuracion_de_controles
	cmp AL, 1
	je inicio

ciclo_juego:
		call pintar_mapa
		call entrada_juego
		
		mov DL, 00
		mov DH, 18
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset iniciales
		mov AH, 09
		int 21
		pop DX

		mov DL, cont_punt_mov
		mov puntaje[3], DL

		mov DL, 19
		mov DH, 01
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset puntaje
		mov AH, 09
		int 21
		pop DX

		mov DL, 19
		mov DH, 18
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset cronometro
		mov AH, 09
		int 21
		pop DX

		jmp ciclo_juego


archivo_no_encontrado:
	call clear_pantalla

	mov DL, 07
	mov DH, 09
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo
	mov AH, 09
	int 21
	pop DX

	mov CX, 15
	call prebas

	jmp inicio

archivo_no_encontrado2:
	call clear_pantalla

	mov DL, 07
	mov DH, 09
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo
	mov AH, 09
	int 21
	pop DX

	mov DL, 04
	mov DH, 0b
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo2
	mov AH, 09
	int 21
	pop DX

	call clear_map_buffer

	mov CX, 15
	call prebas

	jmp inicio

archivo_no_encontrado3:
	call clear_pantalla

	mov DL, 07
	mov DH, 09
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo
	mov AH, 09
	int 21
	pop DX

	mov DL, 06
	mov DH, 0b
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo3
	mov AH, 09
	int 21
	pop DX

	mov DL, 04
	mov DH, 0d
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset tag_error_archivo4
	mov AH, 09
	int 21
	pop DX

	call clear_map_buffer

	mov CX, 15
	call prebas

	jmp inicio



cargar_un_nivel_auto:
	cmp [sesion_activa], 01
	je ciclo_juego
	mov cont_sent_jug , 0
	mov cont_sent_caj , 0
	mov cont_sent_obj , 0

	mov AL, 00
	mov DX, offset nivel_cero
	mov AH, 3d
	int 21
	jc archivo_no_encontrado
	mov [handle_nivel], AX
	jmp ciclo_lineas

cargar_un_nivel_auto2:
	mov AL, 00
	mov DX, offset nivel_uno
	mov AH, 3d
	int 21
	jc archivo_no_encontrado
	mov [handle_nivel], AX
	jmp ciclo_lineas

cargar_un_nivel_auto3:
	mov AL, 00
	mov DX, offset nivel_dos
	mov AH, 3d
	int 21
	jc archivo_no_encontrado
	mov [handle_nivel], AX
	jmp ciclo_lineas

clear_map_buffer:
	mov DI, offset mapa
	mov Cx, 3e8
	mov AL, 00
	call memset
	ret

configuracion_de_controles:
	call clear_pantalla

	mov DL, 07
	mov DH, 03
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_titulo2
	mov AH, 09
	int 21
	pop DX

	mov DL, 09
	mov DH, 07
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_abajo
	mov AH, 09
	int 21
	pop DX

	mov DI, offset configuracion_nueva_abajo
	mov Cx , 0c
	call clear_buffer

	mov AH, 00
	int 16

	mov [control_abajo], AH
	mov configuracion_nueva_abajo[0], AL

	;;
	mov DL, 14
	mov DH, 07
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_abajo
	mov AH, 09
	int 21
	pop DX
	;;

	mov DL, 09
	mov DH, 09
	mov BH, 00
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_arriba
	mov AH, 09
	int 21
	pop DX

	mov DI, offset configuracion_nueva_arriba
	mov Cx , 0d
	call clear_buffer

	mov AH, 00
	int 16

	mov [control_arriba], AH
	mov configuracion_nueva_arriba[0], AL

	;;
	mov DL, 14
	mov DH, 09
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_arriba
	mov AH, 09
	int 21
	pop DX
	;;

	mov DL, 09
	mov DH, 0b
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_derecha
	mov AH, 09
	int 21
	pop DX

	mov DI, offset configuracion_nueva_derecha
	mov Cx , 0e
	call clear_buffer

	mov AH, 00
	int 16

	mov [control_derecha], AH
	mov configuracion_nueva_derecha[0], AL

	;;
	mov DL, 14
	mov DH, 0b
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_derecha
	mov AH, 09
	int 21
	pop DX
	;;

	mov DL, 09
	mov DH, 0d
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_izquierda
	mov AH, 09
	int 21
	pop DX

	mov DI, offset configuracion_nueva_izquierda
	mov Cx , 10
	call clear_buffer

	mov AH, 00
	int 16

	mov [control_izquierda], AH
	mov configuracion_nueva_izquierda[0], AL

	;;
	mov DL, 14
	mov DH, 0d
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_izquierda
	mov AH, 09
	int 21
	pop DX
	;;
	
	jmp aceptar_opciones_menu_conf



menu_pause:
	call clear_pantalla
	mov AL, 0
	mov [opcion], AL      ;; reinicio de la variable de salida
	mov AL, 2
	mov [maximo], AL
	mov AX, 70
	mov BX, 50
	mov [xFlecha], AX
	mov [yFlecha], BX

	mov DL, 11
	mov DH, 0A
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset menu_pausa_titulo
	mov AH, 09
	int 21
	pop DX

	mov DL, 11
	mov DH, 0C
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset menu_pausa_titulo2
	mov AH, 09
	int 21
	pop DX
	
	call pintar_flecha
	
entrada_menu_pause:
	mov AH, 00
	int 16
	cmp AH, 48
	je restar_opcion_menu_pause
	cmp AH, 50
	je sumar_opcion_menu_pause
	cmp AH, 3b  ;; le doy F1
	je fin_menu_pause
	jmp entrada_menu_pause
restar_opcion_menu_pause:
	mov AL, [opcion]
	dec AL
	cmp AL, 0ff
	je volver_a_cero2
	mov [opcion], AL
	jmp mover_flecha_menu_pause
sumar_opcion_menu_pause:
	mov AL, [opcion]
	mov AH, [maximo]
	inc AL
	cmp AL, AH
	je volver_a_maximo2
	mov [opcion], AL
	jmp mover_flecha_menu_pause
volver_a_cero2:
	mov AL, 0
	mov [opcion], AL
	jmp mover_flecha_menu_pause
volver_a_maximo2:
	mov AL, [maximo]
	dec AL
	mov [opcion], AL
	jmp mover_flecha_menu_pause
mover_flecha_menu_pause:
	mov AX, [xFlecha]
	mov BX, [yFlecha]
	mov SI, offset dim_sprite_vacio
	mov DI, offset data_sprite_vacio
	call pintar_sprite
	mov AX, 70
	mov BX, 50
	mov CL, [opcion]
ciclo_ubicar_flecha_menu_pause:
	cmp CL, 0
	je pintar_flecha_menu_pause
	dec CL
	add BX, 10
	jmp ciclo_ubicar_flecha_menu_pause
pintar_flecha_menu_pause:
	mov [xFlecha], AX
	mov [yFlecha], BX
	call pintar_flecha
	jmp entrada_menu_pause
	;;
fin_menu_pause:
	ret


menu_conf:
	call clear_pantalla
	mov AL, 0
	mov [opcion], AL      ;; reinicio de la variable de salida
	mov AL, 2
	mov [maximo], AL
	mov AX, 50
	mov BX, 88
	mov [xFlecha], AX
	mov [yFlecha], BX

	mov DL, 0b
	mov DH, 03
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_titulo
	mov AH, 09
	int 21
	pop DX

	mov DL, 09
	mov DH, 07
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_arriba
	mov AH, 09
	int 21
	pop DX

	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_abajo
	mov AH, 09
	int 21
	pop DX
	
	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_izquierda
	mov AH, 09
	int 21
	pop DX

	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_derecha
	mov AH, 09
	int 21
	pop DX

	;;INICIO VARIABLES DE CONFIGURACION

	mov DL, 14
	mov DH, 07
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_arriba
	mov AH, 09
	int 21
	pop DX

	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_abajo
	mov AH, 09
	int 21
	pop DX
	
	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_izquierda
	mov AH, 09
	int 21
	pop DX

	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_nueva_derecha
	mov AH, 09
	int 21
	pop DX

	;;FIN VARIABLES DE CONFIGURACION

	mov DL, 0c
	mov DH, 11
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_guardar
	mov AH, 09
	int 21
	pop DX

	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10

	push DX
	mov DX, offset configuracion_salir
	mov AH, 09
	int 21
	pop DX
	
	call pintar_flecha
	
entrada_menu_conf:
	mov AH, 00
	int 16
	cmp AH, 48
	je restar_opcion_menu_conf
	cmp AH, 50
	je sumar_opcion_menu_conf
	cmp AH, 3b  ;; le doy F1
	je fin_menu_conf
	jmp entrada_menu_conf
restar_opcion_menu_conf:
	mov AL, [opcion]
	dec AL
	cmp AL, 0ff
	je volver_a_cero3
	mov [opcion], AL
	jmp mover_flecha_menu_conf
sumar_opcion_menu_conf:
	mov AL, [opcion]
	mov AH, [maximo]
	inc AL
	cmp AL, AH
	je volver_a_maximo3
	mov [opcion], AL
	jmp mover_flecha_menu_conf
volver_a_cero3:
	mov AL, 0
	mov [opcion], AL
	jmp mover_flecha_menu_conf
volver_a_maximo3:
	mov AL, [maximo]
	dec AL
	mov [opcion], AL
	jmp mover_flecha_menu_conf
mover_flecha_menu_conf:
	mov AX, [xFlecha]
	mov BX, [yFlecha]
	mov SI, offset dim_sprite_vacio
	mov DI, offset data_sprite_vacio
	call pintar_sprite
	mov AX, 50
	mov BX, 88
	mov CL, [opcion]
ciclo_ubicar_flecha_menu_conf:
	cmp CL, 0
	je pintar_flecha_menu_conf
	dec CL
	add BX, 10
	jmp ciclo_ubicar_flecha_menu_conf
pintar_flecha_menu_conf:
	mov [xFlecha], AX
	mov [yFlecha], BX
	call pintar_flecha
	jmp entrada_menu_conf
	;;
fin_menu_conf:
	ret
	

cargar_un_nivel:
		call clear_map_buffer
		call clear_pantalla

		mov DL, 1
		mov DH, 03
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset ask_filename
		mov AH, 09
		int 21
		pop DX
		
		mov dx , offset buffer_entrada
		mov ah , 0a
		int 21  
		mov DI, offset buffer_entrada
		inc DI 
		mov AL , [DI]
		cmp AL, 05
		jb  g_params
	g_params:
		mov SI, offset niv_by_keyboard
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  
		jmp cp_name
	cp_name:
		mov AL , [DI]
		mov [SI], AL
		inc SI
		inc DI 
		loop cp_name
		
		mov AL, 00
		mov DX, offset niv_by_keyboard
		mov AH, 3d
		int 21
		jc archivo_no_encontrado
		mov [handle_nivel], AX
		mov cont_sent_jug , 0
		mov cont_sent_caj , 0
		mov cont_sent_obj , 0
		;;

ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff
		je fin_parseo
		cmp DH, 00     
		je ciclo_lineas
		
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff 
		
		              
		je es_pared 
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff 
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
		
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		inc cont_sent_caj
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		inc cont_sent_obj
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_jugador:
		inc cont_sent_jug
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;
		int 03

		mov AH, cont_sent_jug
		cmp AH, 01
		jne archivo_no_encontrado2

		mov AH, cont_sent_caj
		cmp AH, cont_sent_obj
		jne archivo_no_encontrado3

		jmp ciclo_juego
		jmp fin

;; pintar_pixel - pintar un pixel
;; ENTRADA:
;;     AX --> x pixel
;;     BX --> y pixel
;;     CL --> color
;; SALIDA: pintar pixel
;; AX + 320*BX
pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret

;; pintar_sprite - pinta un sprite
;; Entrada:
;;    - DI: offset del sprite
;;    - SI: offset de las dimensiones
;;    - AX: x sprite 320x200
;;    - BX: y sprite 320x200
pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; delay - subrutina de retardo
delay:
		push SI
		push DI
		mov SI, 0200
cicloA:
		mov DI, 0130
		dec SI
		cmp SI, 0000
		je fin_delay
cicloB:
		dec DI
		cmp DI, 0000
		je cicloA
		jmp cicloB
fin_delay:
		pop DI
		pop SI
		ret
		

;; clear_pantalla - limpia la pantalla
;; ..
;; ..
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret


mis_datos_en_pantalla:
		mov DL, 1
		mov DH, 03
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_uni
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_fac
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_esc
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 09
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_cur
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 0b
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_cur2
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 0d
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_sec
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 11
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_nom
		mov AH, 09
		int 21
		pop DX

		mov DL, 1
		mov DH, 13
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset mis_datos_car
		mov AH, 09
		int 21
		pop DX

		ret

;; menu_principal - menu principal
;; ..
;; SALIDA
;;    - [opcion] -> código numérico de la opción elegida
menu_principal:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_principal:
	mov AH, 00
	int 16
	cmp AH, 48
	je restar_opcion_menu_principal
	cmp AH, 50
	je sumar_opcion_menu_principal
	cmp AH, 3b  ;; le doy F1
	je fin_menu_principal
	jmp entrada_menu_principal
restar_opcion_menu_principal:
	mov AL, [opcion]
	dec AL
	cmp AL, 0ff
	je volver_a_cero
	mov [opcion], AL
	jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
fin_menu_principal:
		ret

;; pintar_flecha - pinta una flecha
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret

;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
		
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret


;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret


;; mapa_quemado - mapa de prueba
mapa_quemado:
		mov DL, SUELO
		mov AH, 2
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 2
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 4
		call colocar_en_mapa
		;;
		mov DL, JUGADOR
		mov AH, [xJugador]
		mov AL, [yJugador]
		call colocar_en_mapa
		;;
		mov DL, CAJA
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		;;
		mov DL, OBJETIVO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		;;
		mov DL, PARED
		mov AH, 1
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 5
		call colocar_en_mapa

		mov DL, PARED
		mov AH, 2
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 5
		call colocar_en_mapa
		ret


;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16

		cmp AH, 03c
		je aceptar_opciones_menu_pause

		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, 3c
		ret
mover_jugador_arr:
		inc cont_punt_mov
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_arriba
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret
hay_pared_arriba:
		ret
mover_jugador_aba:
		inc cont_punt_mov
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_abajo
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
hay_pared_abajo:
		ret
mover_jugador_izq:
		inc cont_punt_mov
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_izquierda
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret
hay_pared_izquierda:
		ret
mover_jugador_der:
		inc cont_punt_mov
		mov AH, [xJugador]
		mov AL, [yJugador]

		;;obtiene posicion del jugador ala que se quiere mover
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		
		; cmp DL, CAJA
		; je mover_caja_der

		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_derecha
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
hay_pared_derecha:
		ret
fin_entrada_juego:
		ret

mover_caja_der:
	mov AH, [xJugador]
	mov AL, [yJugador]
	inc AH
	push AX
	call obtener_de_mapa
	pop AX
	;; DL <- elemento en mapa
	cmp DL, PARED
	je hay_pared_derecha
	mov [xJugador], AH
	;;
	mov DL, JUGADOR
	push AX
	call colocar_en_mapa
	pop AX
	;;
	mov DL, SUELO
	dec AH
	call colocar_en_mapa
	ret

;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
;;    - BX: handle
;; SALIDA:
;;    - [linea]: contenido de la línea que se extrajo, finalizada en 00 (nul0)
;;    - DL: si el archivo llegó a su fin
;;    - DH: la cantidad de caracteres en la línea
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret


;; cadena_igual - verifica que dos cadenas sean iguales
;; ENTRADA:
;;    - SI: cadena 1, con su tamaño en el primer byte
;;    - DI: cadena 2
;; SALIDA:
;;    - DL: 0ff si son iguales, 00 si no lo son
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret


;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret

clear_buffer:
	loop_memset:
		mov AL, 00
		mov [DI], AL
		inc DI
		loop loop_memset
		ret

;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
	push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret

;; cadenaAnum
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;;;;
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret


fin:
.EXIT
END