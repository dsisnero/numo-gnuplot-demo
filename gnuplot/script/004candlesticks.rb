#
# candlesticks
# http://gnuplot.sourceforge.net/demo_4.6/candlesticks.html
require_relative "gpl"

# reset
# #
# set xrange [0:11]
# set yrange [0:10]
# #
# set title "candlesticks with open boxes (default)"
# plot 'candlesticks.dat' using 1:3:2:6:5 with candlesticks

gpl do
  reset
  set xrange:0..11
  set yrange:0..10
  set title:"candlesticks with open boxes (default)"
  plot "'candlesticks.dat'", using:[1,3,2,6,5], with:"candlesticks"
end

# set title "candlesticks with specified boxwidth"
# set boxwidth 0.2
# replot

gpl do
  set title:"candlesticks with specified boxwidth"
  set boxwidth:0.2
  replot
end

# set title "candlesticks with style fill solid"
# set style fill solid
# set boxwidth 0.2
# replot

gpl do
  set title:"candlesticks with style fill solid"
  set :style, :fill_solid
  set boxwidth:0.2
  replot
end

# set title "candlesticks showing both states of open/close"
# set style fill empty
# set boxwidth 0.2
# plot 'candlesticks.dat' using 1:(int($0)%3?$3:$5):2:6:(int($0)%3?$5:$3) with candlesticks title "open < close", \
# NaN with boxes lt 1 fs solid 1 title "close < open"

gpl do
  set title:"candlesticks showing both states of open/close"
  set :style, :fill, :empty
  set boxwidth:0.2
  plot ["'candlesticks.dat'", using:'1:(int($0)%3?$3:$5):2:6:(int($0)%3?$5:$3)', with:"candlesticks", title:"open < close"],
    ["NaN", with:"boxes", lt:1, fs_solid:1, title:"close < open"]
end

# set title "box-and-whisker plot adding median value as bar"
# set style fill empty
# plot 'candlesticks.dat' using 1:3:2:6:5 with candlesticks lt 3 lw 2 title 'Quartiles', \
#      ''                 using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle

gpl do
  set title:"box-and-whisker plot adding median value as bar"
  set :style, :fill, :empty
  plot ["'candlesticks.dat'", using:[1,3,2,6,5], with:"candlesticks", lt:3, lw:2, title:'Quartiles'],
    ["''", using:[1,4,4,4,4], with:"candlesticks", lt:-1, lw:2, notitle:true]
end

# set title "box-and-whisker with median bar and whiskerbars"
# plot 'candlesticks.dat' using 1:3:2:6:5 with candlesticks lt 3 lw 2 title 'Quartiles' whiskerbars, \
#      ''                 using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle

gpl do
  set title:"box-and-whisker with median bar and whiskerbars"
  plot ["'candlesticks.dat'", using:[1,3,2,6,5], with:"candlesticks", lt:3, lw:2, title:'Quartiles', whiskerbars:true],
    ["''", using:[1,4,4,4,4], with:"candlesticks", lt:-1, lw:2, notitle:true]
end

