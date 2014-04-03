NB. A Pythagorean triplet is a set of three natural numbers, a<b<c, for which,
NB. a2+b2=c2
NB. For example, 3^2+ 4^2= 9 + 16 = 25 = 5^2.
NB. There exists exactly one Pythagorean triplet for which a + b + c = 1000.
NB. Find the product abc.
abc =: 3 : 0
g =. <. -: y
m =. 1 + i. g
r =. 0
for_a. m do.
for_b. m do.
if. y < a+b+1 do. break. end.
for_c. m do.
if. y = z =. +/ a,b,c do.
'd e f' =. /:~ a,b,c
if. (*:f) =  +/ *: d,e do.
r =. d,e,f
break.
end.
elseif. z > y do.
break.
end.
end.
if. 1 < # r do. break. end.
end.
if. 1 < # r do. break. end.
end.
r
)
pt1000 =: abc 1000
smoutput pt1000 ; */ pt1000
exit''
