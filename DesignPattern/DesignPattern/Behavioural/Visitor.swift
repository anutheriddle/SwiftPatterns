//
//  Visitor.swift
//  DesignPattern
//
//  Created by Anurag Sharma on 23/05/18.
//  Copyright © 2018 Anurag Sharma. All rights reserved.
//

import Foundation
/*:
 🏃 Visitor
 ----------
 The visitor pattern is used to separate a relatively complex set of structured data classes from the functionality that may be performed upon the data that they hold.
 ### Example
 */
protocol PlanetVisitor {
   func visit(planet: PlanetAlderaan)
    func visit(planet: PlanetCoruscant)
    func visit(planet: PlanetTatooine)
    func visit(planet: MoonJedah)
}

protocol Planet {
    func accept(visitor: PlanetVisitor)
}

class MoonJedah: Planet {
    func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetAlderaan: Planet {
    func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetCoruscant: Planet {
    func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetTatooine: Planet {
    func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}



class NameVisitor: PlanetVisitor {
    var name = ""
    
    func visit(planet: PlanetAlderaan)  { name = "Alderaan" }
    func visit(planet: PlanetCoruscant) { name = "Coruscant" }
    func visit(planet: PlanetTatooine)  { name = "Tatooine" }
    func visit(planet: MoonJedah)       { name = "Jedah" }
}
