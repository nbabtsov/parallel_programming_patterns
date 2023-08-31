#include <stdio.h>
#include <assert.h>

template<typename T>
T reduce(T (*f)(T,T), int size, T a[]){
	assert(size>0);
	T accum = a[0];
	for (size_t i = 1; i<size; i++){
		accum = f(accum,a[i]);
	}
	return accum;
}

int combine(int a, int b){
	return a + b;
}

int main(){
	int arr[] = {1,2,3,4,5,6,7,8};
	
	int result = reduce(combine,8,arr);
	printf("%d\n",result);
	return result;
}

