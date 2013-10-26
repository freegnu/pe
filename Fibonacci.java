public class Fibonacci {
    public static void main (String[] args) throws Exception {
	long i = 1;
	long sum = 0;
	long last = fib(i);
	while (last < 4000000) {
	    if (last % 2 == 0) {
		sum += last;
	    }
	    last = fib(++i);
	}
	System.out.println(sum);
    }
    public static long fib (long n) {
	long r = 0;
	if (n == 0 || n == 1) {
	    r = 1;
	}
	else {
	    r = fib(n-1) + fib(n-2);
	}
	return r;
    }
}
