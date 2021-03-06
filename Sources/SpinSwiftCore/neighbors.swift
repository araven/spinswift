/*
//  Copyright (C) 2020 Pascal Thibaudeau.
//
// This software is a computer program whose purpose is Spinswift.
//
// This software is governed by the CeCILL license under French law and
// abiding by the rules of distribution of free software. You can use,
// modify and/ or redistribute the software under the terms of the CeCILL
// license as circulated by CEA, CNRS and INRIA at the following URL
// "http://www.cecill.info".
//
// As a counterpart to the access to the source code and rights to copy,
// modify and redistribute granted by the license, users are provided only
// with a limited warranty and the software's author, the holder of the
// economic rights, and the successive licensors have only limited
// liability.
//
// In this respect, the user's attention is drawn to the risks associated
// with loading, using, modifying and/or developing or reproducing the
// software by the user in light of its specific status of free software,
// that may mean that it is complicated to manipulate, and that also
// therefore means that it is reserved for developers and experienced
// professionals having in-depth computer knowledge. Users are therefore
// encouraged to load and test the software's suitability as regards their
// requirements in conditions enabling the security of their systems and/or
// data to be ensured and, more generally, to use and operate it in the
// same conditions as regards security.
//
// The fact that you are presently reading this means that you have had
// knowledge of the CeCILL license and that you accept its terms.
//
//  neighbors.swift
//  Spinswift
//
//  Created by Pascal Thibaudeau on 24/06/2019.
*/

public class Neighbors {

    public var list = [[Int]]()
    public var radius = 1.0
    
    public init(geometry: Geometry, radius : Double) {
        self.list = createNeighbors(geometry: geometry, radius : radius)
        self.radius = radius
    }

    func createNeighbors(geometry: Geometry, radius: Double) -> [[Int]] {

        var matrix : [[Int]] = []

        for (index1,_) in geometry.r.enumerated(){
         matrix.append([])
         for index2 in 0...index1 {
            if ((geometry.Distance(atom1: index1, atom2: index2) <= radius) && geometry.Distance(atom1: index1, atom2: index2) != 0) {
             matrix[index1].append(index2)
             matrix[index2].append(index1)
            }
         }
        }
        return matrix
    }
}