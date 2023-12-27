set style data dots
set nokey
set xrange [0: 3.79564]
set yrange [ -7.12914 : 16.95023]
set arrow from  1.00210,  -7.12914 to  1.00210,  16.95023 nohead
set arrow from  2.15922,  -7.12914 to  2.15922,  16.95023 nohead
set arrow from  2.56833,  -7.12914 to  2.56833,  16.95023 nohead
set xtics (" L "  0.00000," G "  1.00210," X "  2.15922," K "  2.56833," G "  3.79564)
 plot "wannier90_band.dat"
