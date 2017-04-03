# Spinswift
Spinswift is an open source software simulation package for the simulation of magnetic materials developed at the [French Alternative Energies and Atomic Energy Commission](http://www.cea.fr) and [Mathematics and Theoretical Physics Laboratory of University of Tours](http://http://www.lmpt.univ-tours.fr/en/welcome). Spinswift is a complete micromagnetic finite-difference code written in swift. The code makes largely use of the provided libraries and computes the exchange field by finite differences and the demagnetization field with a fast convolution algorithm. Since the magnetization in finite-difference micromagnetics is represented by a multi-dimensional array and the library features a rich interface for this data structure, the presented code is a good starting point for the development of novel algorithms.

Spinswift is governed by the CeCILL license under French law and abiding by the rules of distribution of free software. You can use, modify and/ or redistribute the software under the terms of the [CeCILL license](http://www.cecill.info) as circulated by CEA, CNRS and INRIA.

## Getting Spinswift
Spinswift is available from github. The code runs in serial on MacOS and linux. A comprehensive overview of the software features and example input files are also provided.

See [A full-fledged micromagnetic code in fewer than 70 lines of NumPy](http://dx.doi.org/10.1016/j.jmmm.2015.03.081) as a good starting point.
