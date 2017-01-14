## rectangles
[Original Demo](http://gnuplot.sourceforge.net/demo_4.6/rectangle.html)

### 1

```ruby
# # demo for the use of "set object rectangle"
# #
# # Ethan A Merritt - 2006
# 
# if ((GPVAL_VERSION == 4.3 || GPVAL_VERSION == 4.2) \
# &&  (!strstrt(GPVAL_COMPILE_OPTIONS,"+OBJECTS"))) \
#     print ">>> Skipping demo <<<\n" ; \
#     print "This copy of gnuplot was built without support for placing rectangles\n" ; \
#     exit ;
# 
# set style line 1 bgnd
# set style line 2 lt rgb "cyan"
# 
# set object 1 rect from 0,0 to 1,4 fc lt 2
# set object 2 rect from -1,1 to 0,5 fc rgb "gold"
# set object 5 rect from 0, -3 to 2, -2 fc ls 2 fs pattern 1 bo -1
# 
# set style fill pattern 2 bo 1
# 
# #
# # Illustrate putting a different color under the key box
# #
# set key nobox
# set object 7 rect from graph 0.65,graph 0.85 to graph 0.99, graph 0.99 fc ls 1
# 
# #
# # Illustrate using character widths to put a box around a label
# #
# LABEL = "Label in a box"
# set obj 10 rect at -3,-4 size char strlen(LABEL), char 1
# set obj 10 fillstyle empty border -1 front
# set label 10 LABEL at -3,-4 front center
# 
# set obj 9 rect from -4, -4 to -4, -3 fc lt -1
# 
# set obj 20 rect from graph 0, graph 0 to graph 1, graph 1 fs solid 0.15 fc rgb "#FFD700" behind
# 
# plot [-5:5] x, -3+sin(x*5)/x lt 3 lw 3

Numo.gnuplot do
  set :style, :line, 1, :bgnd
  set :style, :line, 2, lt_rgb:"cyan"
  set :object, 1, "rect", from:[0,0], to:[1,4], fc:true, lt:2
  set :object, 2, "rect", from:[-1,1], to:[0,5], fc_rgb:"gold"
  set :object, 5, "rect", from:[0,-3], to:[2,-2], fc:true, ls:2, fs:true, pattern:1, bo:-1
  set :style, :fill, pattern:2, bo:1
  set :key, :nobox
  set :object, 7, "rect", from:"graph 0.65,graph 0.85", to:"graph 0.99, graph 0.99", fc:true, ls:1
  run "LABEL = \"Label in a box\""
  set :obj, 10, "rect", at:[-3,-4], size:"char strlen(LABEL), char 1"
  set :obj, 10, :fillstyle, :empty, border:-1, front:true
  set :label, 10, "LABEL", at:[-3,-4], front:true, center:true
  set :obj, 9, "rect", from:[-4,-4], to:[-4,-3], fc:true, lt:-1
  set :obj, 20, "rect", from:"graph 0, graph 0", to:"graph 1, graph 1", fs_solid:0.15, fc_rgb:"#FFD700", behind:true
  plot  -5..5,
    "x",
    ["-3+sin(x*5)/x", lt:3, lw:3]
end
```
![807rectangle/001](https://raw.github.com/ruby-numo/gnuplot-demo/master/gnuplot/md/807rectangle/image/001.png)

### 2

```ruby
# reset
# 
# #
# # Requires data file "using.dat" from this directory,
# # so change current working directory to this directory before running.
# #
# 
# set xrange [1:8]
# set title "Convex     November 1-7 1989"
# set key below
# set label "(Weekend)" at 5,25 center
# 
# set style rect fc lt -1 fs solid 0.15 noborder
# 
# set obj rect from 1, graph 0 to 2, graph 1
# set obj rect from 3, graph 0 to 4, graph 1
# set obj rect from 5, graph 0 to 6, graph 1
# set obj rect from 7, graph 0 to 8, graph 1
# 
# plot 'using.dat' using 3:4 title "Logged in" with impulses,\
#      'using.dat' using 3:5 t "Load average" with points,\
#      'using.dat' using 3:6 t "%CPU used" with lines

Numo.gnuplot do
  reset
  set xrange:1..8
  set title:"Convex     November 1-7 1989"
  set :key, "below"
  set label:"(Weekend)", at:[5,25], center:true
  set :style, "rect", :fc, lt:-1, fs_solid:0.15, noborder:true
  set :obj, "rect", from:"1, graph 0", to:"2, graph 1"
  set :obj, "rect", from:"3, graph 0", to:"4, graph 1"
  set :obj, "rect", from:"5, graph 0", to:"6, graph 1"
  set :obj, "rect", from:"7, graph 0", to:"8, graph 1"
  plot ["'using.dat'", using:[3,4], title:"Logged in", with:"impulses"],
    ["'using.dat'", using:[3,5], t:"Load average", with:"points"],
    ["'using.dat'", using:[3,6], t:"%CPU used", with:"lines"]
end
```
![807rectangle/002](https://raw.github.com/ruby-numo/gnuplot-demo/master/gnuplot/md/807rectangle/image/002.png)