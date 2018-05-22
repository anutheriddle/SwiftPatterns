//
//  Strategy.swift
//  DesignPattern
//
//  Created by Anurag Sharma on 23/05/18.
//  Copyright © 2018 Anurag Sharma. All rights reserved.
//

import Foundation
/*:
 💡 Strategy
 -----------
 The strategy pattern is used to create an interchangeable family of algorithms from which the required process is chosen at run-time.
 ### Example
 */
protocol PrintStrategy {
    func print(_ string: String) -> String
}

final class Printer {
    
    private let strategy: PrintStrategy
    
    func print(_ string: String) -> String {
        return self.strategy.print(string)
    }
    
    init(strategy: PrintStrategy) {
        self.strategy = strategy
    }
}

final class UpperCaseStrategy: PrintStrategy {
    func print(_ string: String) -> String {
        return string.uppercased()
    }
}

final class LowerCaseStrategy: PrintStrategy {
    func print(_ string:String) -> String {
        return string.lowercased()
    }
}
