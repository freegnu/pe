fib 0=1
fib 1=1
fib n=fib(n-1)+fib(n-2)
main=putStrLn$show$sum[j|i<-[1..35],let j=fib i,j<4000000,mod j 2==0]
