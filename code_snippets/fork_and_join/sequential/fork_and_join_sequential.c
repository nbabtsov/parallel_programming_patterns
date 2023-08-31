#include <stdio.h>

/*sequential code for Fibonacci*/

long fib(int n)
{
	if (n < 2) return 1;
	else
	{
	long x = fib(n-1); 
	long y = fib(n-2);
	printf("%ld + %ld = %ld\n", x, y, (x+y));
	return x + y; 
	}
}

int main()
{
	long result = fib(8); 
	printf("%ld\n", result); 
	return 0;
}
