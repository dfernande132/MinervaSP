10 REM Compila
10 PRINT "COMPILANDO...."
20 DEV_USE 7, 'dos1_'
30 LRESPR 'win2_extras_source_outptr_bin'
40 PROG_USE 'win2_extras_exe'
50 EX 'win2_extras_exe_Make'; 'dev7_M_ROM_link -l'
60 PRINT "COMPILADO, EMPAQUETANDO"
70 PAUSE 100
100 REM EMPAQUETA
110 adr = ALCHP(48 * 1024)
120 LBYTES 'dev7_M_ROM_exe', adr
130 SBYTES 'dev7_M_Minerva198SP_rom', adr, 48 * 1024
140 RECHP adr
150 PRINT "ROM Minerva198SP GENERADA"
150 PRINT
