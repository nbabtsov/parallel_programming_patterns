#include <stdio.h>
#include <stdlib.h>

/*
 * Simplest map program. 
 * To add complexity (in terms of code analysis):
 * - Access memory by pointers
 * - Calculate from multiple arrays (x[i] = a * x[i] + y[i])
 * - Use different data structure
 * - Calculation is done by a non-explicit value
 *     example: loop instruction 'x[i] += myValue' must ensure
 *     that 'myValue' does not change throughout loop execution.
 */

int main(int argc, char** argv) {
 	// Params
 	const int arr_length = 1000;
	const int rand_cap = 10000;

 	// Setup
 	int arr[arr_length];
	for(int i = 0; i < arr_length; i++) {
 		arr[i] = rand() % rand_cap;
	}
 	
	 // Calculation
	for(int i = 0; i < arr_length; i++) {
 		arr[i] += 1;
	}

 	return 0;	
}
	