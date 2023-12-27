
set terminal png
set output 'plot_hse.png'
set style data dots
set nokey
set xrange [0: 3.79564]
set yrange [ -8.78018 : 18.02297]
set arrow from  1.00210,  -8.78018 to  1.00210,  18.02297 nohead
set arrow from  2.15922,  -8.78018 to  2.15922,  18.02297 nohead
set arrow from  2.56833,  -8.78018 to  2.56833,  18.02297 nohead
set xtics (" L "  0.00000," G "  1.00210," X "  2.15922," K "  2.56833," G "  3.79564)
 plot "wannier90_band.dat"
