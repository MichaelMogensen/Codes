//
//  Event.swift
//  Codes
//
//  Created by Michael Mogensen on 25/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation

class Event2<T> {
    
    typealias EventHandler = (T) -> ()
    
    private var eventHandlers = [EventHandler]()
    
    func addHandler(handler: @escaping EventHandler) {
        eventHandlers.append(handler)
    }
    
    func raise(data: T) {
        for handler in eventHandlers {
            handler(data)
        }
    }
}

