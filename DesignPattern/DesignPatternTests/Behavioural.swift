
//
//  Behavioural.swift
//  DesignPatternTests
//
//  Created by Anurag Sharma on 23/05/18.
//  Copyright © 2018 Anurag Sharma. All rights reserved.
//

import XCTest
@testable import DesignPattern

class Behavioural: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testChain(){
        let ten = MoneyPile(value: 10, quantity: 6, nextPile: nil)
        let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
        let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
        let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)
        
        // Build ATM.
        let atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
       print( atm.canWithdraw(amount: 310))// Cannot because ATM has only 300
       print(atm.canWithdraw(amount: 100)) // Can withdraw - 1x100
      print(  atm.canWithdraw(amount: 165)) // Cannot withdraw because ATM doesn't has bill with value of 5
       print( atm.canWithdraw(amount: 30))
    }
    
    func testCommand(){
        
    }
    func testInterpreter(){
        
    }
    func testIterator(){
        
    }
    func testMediator(){
        
    }
    func testMemento(){
        
    }
    func testObserver(){
        
    }
    func testState(){
        
    }
    func testStrategy(){
        
    }
    func testTemplate(){
        
    }
    func testVisitor(){
        let planets: [Planet] = [PlanetAlderaan(), PlanetCoruscant(), PlanetTatooine(), MoonJedah()]
        
        let names = planets.map { (planet: Planet) -> String in
            let visitor = NameVisitor()
            planet.accept(visitor: visitor)
            return visitor.name
        }
        print(names)
    }
}
