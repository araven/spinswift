# Spinswift
Spinswift is an open source software simulation package for the simulation of magnetic materials. The aim of Spinswift is to provide a complete micromagnetic finite-difference code written in swift. The code makes largely use of the provided libraries and computes the exchange field by finite differences and the demagnetization field with a fast convolution algorithm. Since the magnetization in finite-difference micromagnetics is represented by a multi-dimensional array and the library features a rich interface for this data structure, the presented code is an interesting starting point for the development of novel algorithms.

## Getting Spinswift
Spinswift is available from github. The code runs in serial on MacOS and linux. A comprehensive overview of the software features and example input files have to be provided.

See [A full-fledged micromagnetic code in fewer than 70 lines of NumPy](http://dx.doi.org/10.1016/j.jmmm.2015.03.081) and [https://github.com/micromagnetics/70LinesOfNumpy](https://github.com/micromagnetics/70LinesOfNumpy) as good starting points.
