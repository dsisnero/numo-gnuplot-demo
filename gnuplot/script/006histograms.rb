#
# histograms
# http://gnuplot.sourceforge.net/demo_4.6/histograms.html
require_relative "gpl"

# # Example of using histogram modes
# #
# reset
# set title "US immigration from Europe by decade"
# set datafile missing "-"
# set xtics nomirror rotate by -45
# set key noenhanced
# #
# # First plot using linespoints
# set style data linespoints
# plot 'immigration.dat' using 2:xtic(1) title columnheader(2), \
# for [i=3:22] '' using i title columnheader(i)

gpl do
  reset
  set title:"US immigration from Europe by decade"
  set :datafile, :missing, "-"
  set :xtics, :nomirror, rotate_by:-45
  set :key, :noenhanced
  set :style, :data, :linespoints
  plot ["'immigration.dat'", using:'2:xtic(1)', title_nq:'columnheader(2)'],
    "for [i=3:22] '' using i title columnheader(i)"
end

# set title "US immigration from Northern Europe\nPlot selected data columns as histogram of clustered boxes"
# set auto x
# set yrange [0:300000]
# set style data histogram
# set style histogram cluster gap 1
# set style fill solid border -1
# set boxwidth 0.9
# set xtic rotate by -45 scale 0
# #set bmargin 10 
# plot 'immigration.dat' using 6:xtic(1) ti col, '' u 12 ti col, '' u 13 ti col, '' u 14 ti col

gpl do
  set title:"US immigration from Northern Europe\nPlot selected data columns as histogram of clustered boxes"
  set auto:"x"
  set yrange:0..300000
  set :style, :data, :histogram
  set :style, :histogram, :cluster, gap:1
  set :style, :fill_solid, border:-1
  set boxwidth:0.9
  set :xtic, :rotate, by:-45, scale:0
  plot ["'immigration.dat'", using:'6:xtic(1)', ti_nq:'col'],
    ["''", u:12, ti_nq:'col'],
    ["''", u:13, ti_nq:'col'],
    ["''", u:14, ti_nq:'col']
end

# set title "US immigration from Northern Europe\n(same plot with larger gap between clusters)"
# set style histogram gap 5
# replot

gpl do
  set title:"US immigration from Northern Europe\n(same plot with larger gap between clusters)"
  set :style, :histogram, gap:5
  replot
end

# # Stacked histograms
# #
# set title "US immigration from Europe by decade\nPlot as stacked histogram"
# set key invert reverse Left outside
# set key autotitle columnheader
# set yrange [0:7e6]
# set auto x
# unset xtics
# set xtics nomirror rotate by -45 scale 0
# set style data histogram
# set style histogram rowstacked
# set style fill solid border -1
# set boxwidth 0.75
# #
# plot 'immigration.dat' using 2:xtic(1), for [i=3:22] '' using i

gpl do
  set title:"US immigration from Europe by decade\nPlot as stacked histogram"
  set :key, :invert, :reverse, :Left, :outside
  set :key, autotitle:"columnheader"
  set yrange:"[0:7e6]"
  set auto:"x"
  unset :xtics
  set :xtics, :nomirror, rotate_by:-45, scale:0
  set :style, :data, :histogram
  set :style, histogram:"rowstacked"
  set :style, :fill_solid, border:-1
  set boxwidth:0.75
  plot ["'immigration.dat'", using:'2:xtic(1)'],
    "for [i=3:22] '' using i"
end

# # Stacked histograms by percent
# #
# set title "US immigration from Europe by decade\nFraction of total plotted as stacked histogram"
# set key invert reverse Left outside
# set yrange [0:100]
# set ylabel "% of total"
# unset ytics
# set grid y
# set border 3
# set style data histograms
# set style histogram rowstacked
# set style fill solid border -1
# set boxwidth 0.75
# #
# plot 'immigration.dat' using (100.*$2/$24):xtic(1) t column(2), \
#      for [i=3:23] '' using (100.*column(i)/column(24)) title column(i) 

gpl do
  set title:"US immigration from Europe by decade\nFraction of total plotted as stacked histogram"
  set :key, :invert, :reverse, :Left, :outside
  set yrange:0..100
  set ylabel:"% of total"
  unset :ytics
  set grid:"y"
  set border:3
  set :style, :data, :histograms
  set :style, histogram:"rowstacked"
  set :style, :fill_solid, border:-1
  set boxwidth:0.75
  plot ["'immigration.dat'", using:'(100.*$2/$24):xtic(1)', t_nq:'column(2)'],
    "for [i=3:23] '' using (100.*column(i)/column(24)) title column(i)"
end

# # Columnstacks
# #	xtic labels should be picked up from column heads ('title column')
# #	key titles should be picked up from row heads ('key(1)')
# #
# set title "Immigration from Northern Europe\n(columstacked histogram)"
# set style histogram columnstacked
# set key noinvert box
# set yrange [0:*]
# set ylabel "Immigration by decade"
# set xlabel "Country of Origin"
# set tics scale 0.0
# set ytics
# unset xtics
# set xtics norotate nomirror
# plot 'immigration.dat' using 6 ti col, '' using 12 ti col, \
#      '' using 13 ti col, '' using 14:key(1) ti col

gpl do
  set title:"Immigration from Northern Europe\n(columstacked histogram)"
  set :style, histogram:"columnstacked"
  set :key, :noinvert, :box
  set yrange:"[0:*]"
  set ylabel:"Immigration by decade"
  set xlabel:"Country of Origin"
  set :tics, :scale, 0.0
  set :ytics
  unset :xtics
  set :xtics, :norotate, :nomirror
  plot ["'immigration.dat'", using:6, ti_nq:'col'],
    ["''", using:12, ti_nq:'col'],
    ["''", using:13, ti_nq:'col'],
    ["''", using:'14:key(1)', ti_nq:'col']
end

# # 'newhistogram' keyword to plot
# #
# set title "Immigration from different regions\n(give each histogram a separate title)"
# set key under nobox
# set style histogram clustered gap 1 title offset 2,0.25
# set style fill solid noborder
# set boxwidth 0.95
# unset xtics
# set xtics nomirror rotate by -45 scale 0
# set xlabel "(note: histogram titles have specified offset relative to X-axis label)" offset 0,-2
# set ytics
# set grid y
# set auto y
# plot \
# newhistogram "Northern Europe", \
# 'immigration.dat' using 6:xtic(1) t col, '' u 13 t col, '' u 14 t col, \
# newhistogram "Southern Europe", \
# '' u 9:xtic(1) t col, '' u 17 t col, '' u 22 t col, \
# newhistogram "British Isles", \
# '' u 10:xtic(1) t col, '' u 21 t col

gpl do
  set title:"Immigration from different regions\n(give each histogram a separate title)"
  set :key, "under", :nobox
  set :style, :histogram, clustered_gap:1, title_offset:[2,0.25]
  set :style, :fill_solid, :noborder
  set boxwidth:0.95
  unset :xtics
  set :xtics, :nomirror, rotate_by:-45, scale:0
  set xlabel:"(note: histogram titles have specified offset relative to X-axis label)", offset:[0,-2]
  set :ytics
  set grid:"y"
  set auto:"y"
  plot "newhistogram \"Northern Europe\"",
    ["'immigration.dat'", using:'6:xtic(1)', t_nq:'col'],
    ["''", u:13, t_nq:'col'],
    ["''", u:14, t_nq:'col'],
    "newhistogram \"Southern Europe\"",
    ["''", u:'9:xtic(1)', t_nq:'col'],
    ["''", u:17, t_nq:'col'],
    ["''", u:22, t_nq:'col'],
    "newhistogram \"British Isles\"",
    ["''", u:'10:xtic(1)', t_nq:'col'],
    ["''", u:21, t_nq:'col']
end

# set style histogram rows
# set boxwidth 0.8
# set yrange [0:900000]
# set xlabel "(Same plot using rowstacked rather than clustered histogram)"
# replot

gpl do
  set :style, histogram:"rows"
  set boxwidth:0.8
  set yrange:0..900000
  set xlabel:"(Same plot using rowstacked rather than clustered histogram)"
  replot
end

