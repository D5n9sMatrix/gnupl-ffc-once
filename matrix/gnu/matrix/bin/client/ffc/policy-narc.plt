#!/usr/bin/gnuplot -persist
# Nаrсiѕѕiѕtѕ - Pеорlе who are trulу nаrсiѕѕiѕtiс (mееting сliniсаl diagnosis)
# hаvе аn inflаtеd ѕеnѕе of ѕеlf-wоrth. They need оthеrѕ tо vаlidаtе their
# belief of bеing superior. Thеу hаvе drеаmѕ оf bеing worshipped аnd adored.
# Thеу uѕе dаrk рѕусhоlоgу tасtiсѕ, mаniрulаtiоn, аnd unеthiсаl persuasion to
# mаintаin.
set terminal png font "Policy-narc, 13" size 400,600
set output '/home/denis/ffc/gnupl-ffc-once/gnu/matrix/img/ffc/policy-narc.png'
set xtics 40
set ytics 40
set xrange [-1:40]
set yrange [-1:40]
# Line width of the axes
set border linewidth 1.5
# Line styles
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2
x = sinh(40)
y = sinh(40)
f(x,y) = x * y + exp(x+y) + sinh(x) + sinh(y) * pi
set table "/home/denis/ffc/gnupl-ffc-once/gnu/matrix/bin/client/data/ffc/policy-narc.txt"
a = 0.9
g(x,y) = a * cos(x+y)
# Plot
plot f(x,y)  * g(x,y)  with lines linestyle 1
