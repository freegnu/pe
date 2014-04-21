NB. Read a script and execute it without the exit
sf =: 3 : 0
'~user/' , y , '.ijs'
)
ld =: 3 : 0
0!:1 'exit' taketo 1 !: 1 < sf y
)
