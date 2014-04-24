NB. Read a script and execute it without the exit
ld =: 3 : 0
s =. '/Users/freegnu/src/projecteuler/' , y , '.ijs'
0!:1 'exit' taketo 1 !: 1 <s
)
