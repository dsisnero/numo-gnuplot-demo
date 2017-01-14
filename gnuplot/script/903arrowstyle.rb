#
# arrow styles
# http://gnuplot.sourceforge.net/demo_4.6/arrowstyle.html
require_relative "gpl"

# set xrange [-1000:1000]
# set yrange [-178:86]
# set tics scale 0
# 
# set style line 1 lt 1 lw 2
# set style line 2 lt 3 lw 2
# 
# set style arrow 1 head filled size screen 0.025,30,45 ls 1
# set style arrow 2 head nofilled size screen 0.03,15 ls 2
# set style arrow 3 head filled size screen 0.03,15,45 ls 1
# set style arrow 4 head filled size screen 0.03,15 ls 2
# set style arrow 5 heads filled size screen 0.03,15,135 ls 1
# set style arrow 6 head empty size screen 0.03,15,135 ls 2
# set style arrow 7 nohead ls 1
# set style arrow 8 heads size screen 0.008,90 ls 2
# 
# print ' We have defined the following arrowstyles:'
# show style arrow
# 
# set arrow from -500,-100 to 500,-100 as 1
# set arrow from -500,-110 to 500,-110 as 2
# set arrow from -500,-120 to 500,-120 as 3
# set arrow from -500,-130 to 500,-130 as 4
# set arrow from -500,-140 to 500,-140 as 5
# set arrow from -500,-150 to 500,-150 as 6
# set arrow from -500,-160 to 500,-160 as 7
# set arrow from -500,-170 to 500,-170 as 8
# 
# set label 'arrowstyle 1:' at -520,-100 right
# set label 'arrowstyle 2:' at -520,-110 right
# set label 'arrowstyle 3:' at -520,-120 right
# set label 'arrowstyle 4:' at -520,-130 right
# set label 'arrowstyle 5:' at -520,-140 right
# set label 'arrowstyle 6:' at -520,-150 right
# set label 'arrowstyle 7:' at -520,-160 right
# set label 'arrowstyle 8:' at -520,-170 right
# 
# set title 'Top: plot with vectors arrowstyle 1, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 1

gpl do
  set xrange:-1000..1000
  set yrange:-178..86
  set :tics, :scale, 0
  set :style, :line, 1, lt:1, lw:2
  set :style, :line, 2, lt:3, lw:2
  set :style, arrow:1, head:true, filled:true, size_screen:[0.025,30,45], ls:1
  set :style, arrow:2, head:true, nofilled:true, size_screen:[0.03,15], ls:2
  set :style, arrow:3, head:true, filled:true, size_screen:[0.03,15,45], ls:1
  set :style, arrow:4, head:true, filled:true, size_screen:[0.03,15], ls:2
  set :style, arrow:5, heads:true, filled:true, size_screen:[0.03,15,135], ls:1
  set :style, arrow:6, head:true, empty:true, size_screen:[0.03,15,135], ls:2
  set :style, arrow:7, nohead:true, ls:1
  set :style, arrow:8, heads:true, size_screen:[0.008,90], ls:2
  show :style, :arrow
  set :arrow, from:[-500,-100], to:[500,-100], as:1
  set :arrow, from:[-500,-110], to:[500,-110], as:2
  set :arrow, from:[-500,-120], to:[500,-120], as:3
  set :arrow, from:[-500,-130], to:[500,-130], as:4
  set :arrow, from:[-500,-140], to:[500,-140], as:5
  set :arrow, from:[-500,-150], to:[500,-150], as:6
  set :arrow, from:[-500,-160], to:[500,-160], as:7
  set :arrow, from:[-500,-170], to:[500,-170], as:8
  set label:'arrowstyle 1:', at:[-520,-100], right:true
  set label:'arrowstyle 2:', at:[-520,-110], right:true
  set label:'arrowstyle 3:', at:[-520,-120], right:true
  set label:'arrowstyle 4:', at:[-520,-130], right:true
  set label:'arrowstyle 5:', at:[-520,-140], right:true
  set label:'arrowstyle 6:', at:[-520,-150], right:true
  set label:'arrowstyle 7:', at:[-520,-160], right:true
  set label:'arrowstyle 8:', at:[-520,-170], right:true
  set title:'Top: plot with vectors arrowstyle 1, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:1
end

# set title 'Top: plot with vectors arrowstyle 2, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 2

gpl do
  set title:'Top: plot with vectors arrowstyle 2, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:2
end

# set title 'Top: plot with vectors arrowstyle 3, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 3

gpl do
  set title:'Top: plot with vectors arrowstyle 3, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:3
end

# set title 'Top: plot with vectors arrowstyle 4, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 4

gpl do
  set title:'Top: plot with vectors arrowstyle 4, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:4
end

# set title 'Top: plot with vectors arrowstyle 5, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 5

gpl do
  set title:'Top: plot with vectors arrowstyle 5, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:5
end

# set title 'Top: plot with vectors arrowstyle 6, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 6

gpl do
  set title:'Top: plot with vectors arrowstyle 6, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:6
end

# set title 'Top: plot with vectors arrowstyle 7, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 7

gpl do
  set title:'Top: plot with vectors arrowstyle 7, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:7
end

# set title 'Top: plot with vectors arrowstyle 8, Bottom: explicit arrows'
# plot \
#      'arrowstyle.dat' using 1:2:(0):3 notitle with vectors arrowstyle 8

gpl do
  set title:'Top: plot with vectors arrowstyle 8, Bottom: explicit arrows'
  plot "'arrowstyle.dat'", using:'1:2:(0):3', notitle:true, with:"vectors", arrowstyle:8
end

# #reset
# 
# #
# # Show plot with data style vectors
# #
# set title "Plot 'file' with vectors <arrowstyle>"
# set key box opaque
# set xrange [*:*]
# set yrange [*:10]
# set for [i=1:8] style arrow i lc i
# plot '1.dat' using 1:2:(+1):(+1) with vectors lt 4 filled title 'filled', \
#      '2.dat' using 1:2:(+1):(+1) with vectors lt 1 heads title 'double-headed', \
#      '2.dat' using ($1):(2-$2/3):(+1):(+2.5):(int($0)%8 + 1) with vectors as var ti 'arrowstyle variable'

gpl do
  set title:"Plot 'file' with vectors <arrowstyle>"
  set :key, :box, :opaque
  set xrange:"[*:*]"
  set yrange:"[*:10]"
  set for:"[i=1:8]", style:true, arrow:"i", lc:"i"
  plot ["'1.dat'", using:'1:2:(+1):(+1)', with:"vectors", lt:4, filled:true, title:'filled'],
    ["'2.dat'", using:'1:2:(+1):(+1)', with:"vectors", lt:1, heads:true, title:'double-headed'],
    ["'2.dat'", using:'($1):(2-$2/3):(+1):(+2.5):(int($0)%8 + 1)', with:"vectors", as:"var", ti:'arrowstyle variable']
end

