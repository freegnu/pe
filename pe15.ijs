NB. Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
NB. How many such routes are there through a 20×20 grid?
]{:t =. 1 1 &(+//.@(*/)) ^: (i.21) 1x
[ts =. *:@{: t
+/ts
mpaths =: ([: ! *&2) % (! * !)
mpaths 6
mpaths 20x
