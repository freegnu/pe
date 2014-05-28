NB. The following iterative sequence is defined for the set of positive integers:
NB. n → n /2 ( n is even) 
NB. n → 3 n + 1 ( n is odd)
NB. Using the rule above and starting with 13, we generate the following sequence:
NB. 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
NB. It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
NB. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
NB. Which starting number, under one million, produces the longest chain?
NB. NOTE: Once the chain starts the terms are allowed to go above one million.
n =: (((1: + 3&*)@{. , >:@{:) ` (-:@{. , >:@{:) @. (0&=@|~&2@{.))^:(1&<@{.)^:_: "1
m =: (i.&]) ,. _ _1 {. n@,.&1@i.
nums =:(_,1)&{.
runs =:(_,_1)&{.
max =: >./@runs
smoutput (max,>./@(({.@max = runs) (#"1) nums)) m 1000000
