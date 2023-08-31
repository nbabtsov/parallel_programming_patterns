#include <stdio.h>
#include <stdlib.h>

/* 
 * This implements a one-dimensional stencil of length 3
 * If you wanted to check for correctness, you could do some implement some kind of checksum, but I have omitted this for now
 */

int main(int argc, char** argv) {

	const int insize = 16;		// Input is an insize length array
								// Output will be of dim insize - 2

	int input[insize];
	int output[insize - 2];

	// Populate the test array
	for (int i = 0; i < insize; i++) {
		input[i] = rand() % 100;
	}

	// Actually do the calculation
	for (int i = 1; i < insize - 1; i++) {
		output[i - 1] = input[i - 1] + input[i] + input[i + 1];
	}

/*
	// Print results
	printf("INPUT:\n");
	for (int i = 0; i < insize; i++) {
		printf("%3d ", input[i]);
	}

	printf("\n\nOUTPUT:\n    ");
	for (int i = 0; i < insize - 2; i++) {
		printf("%3d ", output[i]);
	}
	printf("\n");
*/
	return 0;
}