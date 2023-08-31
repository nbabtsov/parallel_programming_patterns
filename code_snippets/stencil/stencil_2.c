#include <stdio.h>
#include <stdlib.h>

/* 
 * This implements an arbitrary square two-dimensional stencil
 * If you wanted to check for correctness, you could do some implement some kind of checksum, but I have omitted this for now
 */

int main(int argc, char** argv) {

	const int insize = 16;		// Input is an insize length array
	const int stencilsize = 1;	// Number of squares away from center stencil reaches
								// Output will be of dim insize - 2

	const int stencil[stencilsize * 2 + 1][stencilsize * 2 + 1] = {
		{0, 1, 0},
		{1, 1, 1},
		{0, 1, 0}
	};

	int input[insize][insize];
	int output[insize - 2][insize - 2];

	// Populate the test array
	for (int i = 0; i < insize; i++) {
		for (int j = 0; j < insize; j++) {
			input[i][j] = rand() % 100;
		}
	}

	// Clear the output space
	for (int i = 0; i < insize - stencilsize * 2; i++) {
		for (int j = 0; j < insize - stencilsize * 2; j++) {
			output[i][j] = 0;
		}
	}

	// Do the calculation
	for (int i = stencilsize; i < insize - stencilsize; i++) {
		for (int j = stencilsize; j < insize - stencilsize; j++) {
			for (int k = -1 * stencilsize; k <= stencilsize; k++) {
				for (int l = -1 * stencilsize; l <= stencilsize; l++) {
					output[i - stencilsize][j - stencilsize] += input[i + k][j + l] * stencil[k + stencilsize][l + stencilsize];
				}
			}
		}
	}
/*
	// Print results
	printf("INPUT:\n");
	for (int i = 0; i < insize; i++) {
		for (int j = 0; j < insize; j++) {
			printf("%3d ", input[i][j]);
		}
		printf("\n");
	}

	printf("\nOUTPUT:\n\n");
	for (int i = 0; i < insize - stencilsize * 2; i++) {
		for (int j = 0; j < stencilsize; j++) {
			printf("    ");
		}
		for (int j = 0; j < insize - stencilsize * 2; j++) {
			printf("%3d ", output[i][j]);
		}
		printf("\n");
	}
	printf("\n");
*/
	return 0;
}