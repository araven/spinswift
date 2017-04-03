/*
//  Copyright (C) 2017 Pascal Thibaudeau.
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
//  algebra.swift
//  Spinswift
//
//  Created by Pascal Thibaudeau on 24/03/2017.
*/

import Foundation

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ** : PowerPrecedence
func ** (radix: Double, power: Double) -> Double { return pow(radix, power) }
func ** (radix: Int,    power: Int   ) -> Double { return pow(Double(radix), Double(power)) }
func ** (radix: Float,  power: Float ) -> Double { return pow(Double(radix), Double(power)) }

// newell f
func f(p: [Double]) -> Double {
    let x = abs(p[0]), y = abs(p[1]), z = abs(p[2])
    return +y/2.0*(z**2-x**2)*asinh(y/(sqrt(x**2+z**2)+ε))+z/2.0*(y**2-x**2)*asinh(z/(sqrt(x**2+y**2)+ε))-x*y*z*atan(y*z/(x * sqrt(x**2+y**2+z**2)+ε))+1.0/6.0*(2*x**2-y**2-z**2)*sqrt(x**2+y**2+z**2)
}

// newell g
func g(p: [Double]) -> Double {
    let x = abs(p[0]), y = abs(p[1]), z = abs(p[2])
    return +x*y*z*asinh(z/(sqrt(x**2+y**2)+ε))+y/6.0*(3.0*z**2-y**2)*asinh(x/(sqrt(y**2+z**2)+ε))+x/6.0*(3.0*z**2-x**2)*asinh(y/(sqrt(x**2+z**2)+ε))-z**3/6.0*atan(x*y/(z*sqrt(x**2+y**2+z**2)+ε))-z*y**2/2.0*atan(x*z/(y*sqrt(x**2+y**2+z**2)+ε))-z*x**2/2.0*atan(y*z/(x*sqrt(x**2+y**2+z**2)+ε))-x*y*sqrt(x**2+y**2+z**2)/3.0
}
