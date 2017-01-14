#
# multiplot layout
# http://gnuplot.sourceforge.net/demo_4.6/layout.html
require_relative "gpl"

# # Gnuplot version 4.1 demo of multiplot
# # auto-layout capability
# #
# set multiplot layout 3, 1 title "Multiplot layout 3, 1" font ",14"
# set tmargin 2
# set title "Plot 1"
# unset key
# plot sin(x)/x
# #
# set title "Plot 2"
# unset key
# plot 'silver.dat' using 1:2 ti 'silver.dat'
# #
# set style histogram columns
# set style fill solid
# set key autotitle column
# set boxwidth 0.8
# set format y "    "
# set tics scale 0
# set title "Plot 3"
# plot 'immigration.dat' using 2 with histograms, \
#      '' using 7  with histograms , \
#      '' using 8  with histograms , \
#      '' using 11 with histograms 
# #
# unset multiplot

gpl do
  set :multiplot, layout:[3,1], title:"Multiplot layout 3, 1", font:",14"
  set tmargin:2
  set title:"Plot 1"
  unset :key
  plot "sin(x)/x"
  set title:"Plot 2"
  unset :key
  plot "'silver.dat'", using:[1,2], ti:'silver.dat'
  set :style, histogram:"columns"
  set :style, :fill_solid
  set :key, autotitle:"column"
  set boxwidth:0.8
  set format_y:"    "
  set :tics, :scale, 0
  set title:"Plot 3"
  plot ["'immigration.dat'", using:2, with:"histograms"],
    ["''", using:7, with:"histograms"],
    ["''", using:8, with:"histograms"],
    ["''", using:11, with:"histograms"]
  unset :multiplot
end

# reset
# set multiplot layout 1,3 title "Multiplot layout 1, 3" font ",14"
# set xtics rotate
# set bmargin 5
# #
# set title "Plot 1"
# unset key
# plot sin(x)/x
# #
# set title "Plot 2"
# unset key
# plot 'silver.dat' using 1:2 ti 'silver.dat'
# #
# set title "Plot 3"
# set style histogram columns
# set style fill solid
# set key autotitle column
# set boxwidth 0.8
# set format y "    "
# set tics scale 0
# plot 'immigration.dat' using 2 with histograms , \
#      '' using  7 with histograms , \
#      '' using  8 with histograms , \
#      '' using 11 with histograms 
# #
# unset multiplot

gpl do
  reset
  set :multiplot, layout:[1,3], title:"Multiplot layout 1, 3", font:",14"
  set :xtics, :rotate
  set bmargin:5
  set title:"Plot 1"
  unset :key
  plot "sin(x)/x"
  set title:"Plot 2"
  unset :key
  plot "'silver.dat'", using:[1,2], ti:'silver.dat'
  set title:"Plot 3"
  set :style, histogram:"columns"
  set :style, :fill_solid
  set :key, autotitle:"column"
  set boxwidth:0.8
  set format_y:"    "
  set :tics, :scale, 0
  plot ["'immigration.dat'", using:2, with:"histograms"],
    ["''", using:7, with:"histograms"],
    ["''", using:8, with:"histograms"],
    ["''", using:11, with:"histograms"]
  unset :multiplot
end

# reset
# set multiplot layout 1,3 title "Same plot with a multi-line title\nshowing adjustment of plot area\n to accommodate it" font ",14"
# set xtics rotate
# set bmargin 5
# #
# set title "Plot 1"
# unset key
# plot sin(x)/x
# #
# set title "Plot 2"
# unset key
# plot 'silver.dat' using 1:2 ti 'silver.dat'
# #
# set title "Plot 3"
# set style histogram columns
# set style fill solid
# set key autotitle column
# set boxwidth 0.8
# set format y "    "
# set tics scale 0
# plot 'immigration.dat' using 2 with histograms , \
#      '' using  7 with histograms , \
#      '' using  8 with histograms , \
#      '' using 11 with histograms 
# #
# unset multiplot

gpl do
  reset
  set :multiplot, layout:[1,3], title:"Same plot with a multi-line title\nshowing adjustment of plot area\n to accommodate it", font:",14"
  set :xtics, :rotate
  set bmargin:5
  set title:"Plot 1"
  unset :key
  plot "sin(x)/x"
  set title:"Plot 2"
  unset :key
  plot "'silver.dat'", using:[1,2], ti:'silver.dat'
  set title:"Plot 3"
  set :style, histogram:"columns"
  set :style, :fill_solid
  set :key, autotitle:"column"
  set boxwidth:0.8
  set format_y:"    "
  set :tics, :scale, 0
  plot ["'immigration.dat'", using:2, with:"histograms"],
    ["''", using:7, with:"histograms"],
    ["''", using:8, with:"histograms"],
    ["''", using:11, with:"histograms"]
  unset :multiplot
end

# #          Stacked Plot Demo
# #
# # Set top and bottom margins to 0 so that there is no space between plots.
# # Fix left and right margins to make sure that the alignment is perfect.
# # Turn off xtics for all plots except the bottom one.
# # In order to leave room for axis and tic labels underneath, we ask for
# # a 4-plot layout but only use the top 3 slots.
# #
# set tmargin 0
# set bmargin 0
# set lmargin 3
# set rmargin 3
# unset xtics
# unset ytics
# 
# set multiplot layout 4,1 title "Auto-layout of stacked plots\n"
# 
# set key autotitle column nobox samplen 1 noenhanced
# unset title
# set style data boxes
# set yrange [0 : 800000]
# 
# plot 'immigration.dat' using 3 lt 1
# plot 'immigration.dat' using 8 lt 3
# set xtics nomirror
# set tics scale 0 font ",8"
# set xlabel "Immigration to U.S. by Decade"
# plot 'immigration.dat' using 21:xtic(1) lt 4
# 
# unset multiplot

gpl do
  set tmargin:0
  set bmargin:0
  set lmargin:3
  set rmargin:3
  unset :xtics
  unset :ytics
  set :multiplot, layout:[4,1], title:"Auto-layout of stacked plots\n"
  set :key, autotitle:"column", nobox:true, samplen:1, noenhanced:true
  unset :title
  set :style, :data, :boxes
  set yrange:0..800000
  plot "'immigration.dat'", using:3, lt:1
  plot "'immigration.dat'", using:8, lt:3
  set :xtics, :nomirror
  set :tics, :scale, 0, font:",8"
  set xlabel:"Immigration to U.S. by Decade"
  plot "'immigration.dat'", using:'21:xtic(1)', lt:4
  unset :multiplot
end

