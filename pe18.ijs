NB. By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

test =: 0 : 0
3
7 4
2 4 6
8 5 9 3
)
]test =: ". ;. _2 test
NB. ]text_max =: 2 >./\"1 test

NB. That is, 3 + 7 + 4 + 9 = 23.

NB. Find the maximum total from top to bottom of the triangle below:

tree =: 0 : 0
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
)
]tree =: ". ;. _2 tree
NB. ]tree_max =: 2>./\"1 tree

NB. NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. 
NB. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; 
NB. it cannot be solved by brute force, and requires a clever method! ;o)

NB. maxt =: 3 : '(maxt((<(i.1-~#y);(1+i.1-~#y)){y) >. (maxt((<(1+i.1-~#y);(1+i.1-~#y)){y)`y@.1=$y'
NB. maxt =: ] ` 1: @. #
NB. maxt =: 2: ` ([: # $) @. (2: > [: # $)
NB. maxt =: ] ` >./ ` ((maxt@((<(i.1-~#]);(1+i.1-~])){]) >. (maxt@((<(1+i.1-~]);(1+i.1-~#])){]))  @. (2: ` ([: # $) @. (2: > [: # $))
NB. maxt =: ] ` (>./) ` ((maxt@({~ (< @(}:@i.@# ; }.@i.@#)))) >. (maxt@({~ (< @(}.@i.@# ; }.@i.@#)))))  @. (2: ` ([: # $) @. (2: > [: # $))

NB. maxt =: ] ` (0: ` ] ` (((0 0)&{) , ([: >./ 2&{.) @. #)) ` (0: ` ([: >./ 2&{.) ` ([: >./ [: 2&{. 1&{) @. ([: # $)) ` ((maxt@({~ (< @(}:@i.@# ; }.@i.@#)))) >. (maxt@({~ (< @(}.@i.@# ; }.@i.@#)))))  @. ([: # $)

