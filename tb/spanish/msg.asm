* Default message tables
	xdef	tb_msg

* This file holds all the error messages etc. which are language dependent.
* This is linked at the top of a ROM (in ROM based systems) to make language
* versions easier to implement.

msg	macro
	dc.w	x[.l]-tb_msg
	section tb_txt
x[.l]
	ifstr	{[.ext]} = B goto nolen
	dc.w	y[.l]-*-2
nolen	maclab
i	setnum	0
loop	maclab
i	setnum	[i]+1
	dc.b	[.parm([i])]
	ifnum	[i] < [.nparms] goto loop
y[.l]
	ds.w	0
	section tb_msg
	endm

lf	equ	10

	section tb_msg

tb_msg
	dc.w	$4afb
 	msg {' no finalizado'} 10
 	msg {'tarea invŒlida'} 10
 	msg {'sin memoria'} 10
 	msg {'fuera de rango'} 10
 	msg {'buffer lleno'} 10
 	msg {'canal no abierto'} 10
 	msg {'no encontrado'} 10
	msg {'ya existe'} 10
	msg {'en uso'} 10
 	msg {'fin de fichero'} 10
 	msg {'drive lleno'} 10
 	msg {'nombre incorrecto'} 10
	msg {'error de transmisi–n'} 10
 	msg {'fallo en inicializaci–n'} 10
	msg {'parŒmetro incorrecto'} 10
 	msg {' medio incorrecto'} 10
 	msg {'expresi–n err–nea'} 10
 	msg {'desbordamiento'} 10
 	msg {'no implementado'} 10
 	msg {'s–lo lectura'} 10
 	msg {'l“nea incorrecta'} 10
 	msg {'En l“nea '}
 	msg {' sectores'} 10
 	msg {' F1/F2  monitor/TV'},10 \
     	{' F3/F4  pantalla dual'},10 \
     	{' 128K+SHIFT no-ROM+CTRL'}
 	msg {' The QView Mega Corporation!'}
 	msg {'durante una ejecuci–n WHEN'} 10
 	msg {'PROC/FN limpiado'} 10
	msg.b	{'DomLunMarMieJueVieSab'}
	msg.b	{'EneFebMarAbrMayJunJulAgoSepOctNovDic'}

	end
