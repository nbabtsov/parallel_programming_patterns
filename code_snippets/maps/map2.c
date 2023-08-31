#include <stdlib.h>
/*
 * Complex Map Program
 */

int main(int argc, char** argv) {
        // Params
        const int arr_length = 1000;
        const int rand_cap = 10000;
        int i,j,z;
        j = 100;
        // Setup
        int *arr[arr_length];
        int y[arr_length];
        for(i = 0; i < arr_length; i++) {
            y[i] = rand() % rand_cap;
        }
        
         // Calculation
        for(i = 0; i < arr_length; i++) {
            arr[i] = (((i & 1) != 0) && ((y[i] & 0b111) == 5))? &j : &y[i];
        }

        return 0;
}
