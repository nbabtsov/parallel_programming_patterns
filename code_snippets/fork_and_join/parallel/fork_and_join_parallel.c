/* OpenMP code to computer Fibonacci */

/* compiled with gcc -o omp_fork_and_join -fopenmp fork_and_join_oarallel.c*/

#include <stdlib.h>
#include <stdio.h>
#include "omp.h"

static int fib(int);

int main()
{
	int nthreads, tid; 
	int n = 8; 
	
	 printf("Before: total thread number is %d\n", omp_get_num_threads());

	#pragma omp parallel num_threads(4) private(tid)
	{
		#pragma omp single 
		{
			tid = omp_get_thread_num(); 
			int result = fib(n); 
			printf("Fib(%d) = %d by %d\n", n, result, tid); 
			printf("%d\n\n", result); 
		}
	} //all threads join master thread and terminates 
	
	printf("After: total thread number is %d\n", omp_get_num_threads());

}

static int fib(int n)
{
	int i, j, id; 
	
	if(n < 2)
	{
		return n; 
	}
	#pragma omp task shared (i) private (id) 
	{
		i = fib (n-1);
	}
	#pragma omp task shared (i) private (id)
	{
		j = fib(n-2);  
	}
	#pragma omp taskwait
	{
	printf("%d + %d = %d\n", i, j, (i+j));
	return (i + j); 
	}
	
}
