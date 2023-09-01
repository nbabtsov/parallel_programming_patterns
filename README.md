# Generator of parallel programming patterns code for ML ingestion (ISU Fall 2021 Senior Design Project)
The purpose of this project is to generate a dataset with explicitly labled parallelism patterns to feed to a machine learning algorithm to learn from. 

The dataset of generated in part by running [DiscoPop - Discovery of Potential Parallelism](https://github.com/discopop-project/discopop) (built on top of LLVM) on programs such as [LULESH](https://asc.llnl.gov/codes/proxy-apps/lulesh), a program used to solve hydrodynamics problems. 
The output could be used to determine places in serial C code where pragmas following one of five parallelism patterns:

* Reduction
* Do-All
* Pipeline
* Geometric Decomposition
* Task Parallelism

could be inserted in order to speed up code by taking advantage of multiple cores at compilation. Resulting C code snippets must at least be compilable. 

A more detailed description about the purpose of this project can be found [here](https://seniord.cs.iastate.edu/2021-May-04/files/inline-files/ComS%20402c_0.pdf). 

Final presentation can be found [here](https://docs.google.com/presentation/d/1FuCWsdeyal33wBh1nwQX6miX3XIe-_3iD-18dfa8x-E/edit?usp=sharing). 

Design docs can be found [here](https://seniord.cs.iastate.edu/2021-May-04/design-documents). 
