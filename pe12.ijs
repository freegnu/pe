NB. The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

NB. 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

NB. Let us list the factors of the first seven triangle numbers:

NB. 1: 1
NB. 3: 1,3
NB. 6: 1,2,3,6
NB. 10: 1,2,5,10
NB. 15: 1,3,5,15
NB. 21: 1,3,7,21
NB. 28: 1,2,4,7,14,28

NB. We can see that 28 is the first triangle number to have over five divisors.

NB. What is the value of the first triangle number to have over five hundred divisors?

NB. Runs out of memory
NB. smoutput >./+/0=(1+i.5000)|/+/\1+i.5000
NB. smoutput >:^:(500>>./+/0=(1+i.g])|1$g=:+/1+i.])^:_

NB. Also runs out of memory
NB. d =: 3 : '+/0=d|~1+i.y'
NB. t =: 3 : '+/1+i.y'
NB. smoutput t 1+i.5000
NB. smoutput d t 1+i.5000
NB. 9!:33 ]1
t =: +/@i.@>:
t2 =: ({. + >:@{:) , (>:@{:)
n =: [: +/ 0&=@(|~ >:@i.)
ts =: 6!:2 , 7!:2@]
NB. smoutput 7!:0 ''
NB. smoutput 'ts ''n 250891200'''
NB. smoutput ts 'n 250891200'
NB. smoutput n 250891200
NB. smoutput 7!:0 ''
smoutput 'ts ''(t2^:(500&>@n@{.)^:_:) 1 1'''
NB. smoutput ts '(t2^:(500&>@n@{.)^:_:) 1 1'
smoutput (n@{.,[)@(t2^:(500&>@n@{.)^:_:) 1 1
NB. smoutput 7!:0 ''
