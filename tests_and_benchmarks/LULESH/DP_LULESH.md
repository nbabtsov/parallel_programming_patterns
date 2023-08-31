# Run DP with LULESH

## Set path
```
export PATH_TO_CLANG=/home/lc/clang+llvm/bin/clang
export DISCOPOP_PATH=/home/lc/git/discopop
export PATH_TO_DISCOPOP_BUILD_DIR=/home/lc/git/discopop/build
```

## Generate ``FileMapping.txt``
$DISCOPOP_PATH/scripts/dp-fmap

## CU generation
```
clang++ -DUSE_MPI=0 -DUSE_OPENMP=0 -g -O0 -fno-discard-value-names -Xclang -load -Xclang $PATH_TO_DISCOPOP_BUILD_DIR/libi/LLVMCUGeneration.so -mllvm -fm-path -mllvm ./FileMapping.txt -c lulesh.cc 
```
Above commend generates:
	* Data.xml
	* DP_CUIDCounter.txt
	* lulesh.o
	* OriginalVariables.txt


## Dependence profiling
### Run CMake to configure the project for compilation:
```
cmake -DWITH_MPI=Off -DWITH_OPENMP=Off -DCMAKE_CXX_COMPILER=/home/lc/clang+llvm/bin/clang++ -DCMAKE_CXX_FLAGS="-c -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/lc/git/discopop/build/libi/LLVMDPInstrumentation.so -mllvm -fm-path -mllvm FileMapping.txt"
```
Above commend generates:
	* cmake_install.cmake
	* CMakeCashe.txt
	* CMakeFiles/

### Configure the project for linking:
```
cmake -DCMAKE_CXX_COMPILER=/home/lc/clang+llvm/bin/clang++ -DWITH_OPENMP=Off -DWITH_MPI=Off -DCMAKE_CXX_FLAGS="-g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/lc/git/discopop/build/libi/LLVMDPInstrumentation.so -mllvm -fm-path -mllvm FileMapping.txt" -DCMAKE_CXX_STANDARD_LIBRARIES="-L/home/lc/git/discopop/build/rtlib -lDiscoPoP_RT -lpthread" .

```
Above commend generates:
	* Makefile
	* CMakeCashe.txt (updated)

### Build project with DiscoPop instrumentation applied
```
make
```
Above commend generates:
	* lulesh2.0

### Run
```
./lulesh2.0 -s 4
```
Above commend generates:
	* lulesh2.0_dep.txt

## Identifying reduction operations
### Run CMake to configure the project for compilation:
```
cmake -DWITH_MPI=Off -DWITH_OPENMP=Off -DCMAKE_CXX_COMPILER=/home/lc/clang+llvm/bin/clang++ -DCMAKE_CXX_FLAGS="-c -g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/lc/git/discopop/build/libi/LLVMDPReduction.so -mllvm -fm-path -mllvm FileMapping.txt"
```
Above commend generates:
	* Makefile (updated)
	* CMakeCashe.txt (updated)

### Configure the project for linking:
```
cmake -DCMAKE_CXX_COMPILER=/home/lc/clang+llvm/bin/clang++ -DWITH_OPENMP=Off -DWITH_MPI=Off -DCMAKE_CXX_FLAGS="-g -O0 -fno-discard-value-names -Xclang -load -Xclang /home/lc/git/discopop/build/libi/LLVMDPReduction.so -mllvm -fm-path -mllvm FileMapping.txt" -DCMAKE_CXX_STANDARD_LIBRARIES="-L/home/lc/git/discopop/build/rtlib -lDiscoPoP_RT -lpthread" .
```
Above commend generates:
	* Makefile (updated)
	* CMakeCashe.txt (updated)

### Build project with DiscoPop instrumentation applied
```
make
```
Above commend generates:
	* lulesh2.0 (updated)
	* reduction_meta.txt
	* loop_meta.txt

### Run
```
./lulesh2.0 -s 4
```
Above commend generates:
	* reduction.txt
	* loop_counter_output.txt

## Pattern identfication
Copy ``discopop_explorer/`` to ``LULESH/`` folder
### switch env
```
conda activate dp
```
### Run analyzer
run by:
```
python -m discopop_explorer --dep-file=lulesh2.0_dep.txt 
```