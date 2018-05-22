//
//  State.swift
//  DesignPattern
//
//  Created by Anurag Sharma on 23/05/18.
//  Copyright © 2018 Anurag Sharma. All rights reserved.
//

import Foundation
/*:
 🐉 State
 ---------
 The state pattern is used to alter the behaviour of an object as its internal state changes.
 The pattern allows the class for an object to apparently change at run-time.
 ### Example
 */
final class Context {
    private var state: State = UnauthorizedState()
    
    var isAuthorized: Bool {
        get { return state.isAuthorized(context: self) }
    }
    
    var userId: String? {
        get { return state.userId(context: self) }
    }
    
    func changeStateToAuthorized(userId: String) {
        state = AuthorizedState(userId: userId)
    }
    
    func changeStateToUnauthorized() {
        state = UnauthorizedState()
    }
    
}

protocol State {
    func isAuthorized(context: Context) -> Bool
    func userId(context: Context) -> String?
}

class UnauthorizedState: State {
    func isAuthorized(context: Context) -> Bool { return false }
    
    func userId(context: Context) -> String? { return nil }
}

class AuthorizedState: State {
    let userId: String
    
    init(userId: String) { self.userId = userId }
    
    func isAuthorized(context: Context) -> Bool { return true }
    
    func userId(context: Context) -> String? { return userId }
}
