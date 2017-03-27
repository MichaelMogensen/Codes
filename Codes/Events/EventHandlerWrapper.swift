//
//  EventHandlerWrapper.swift
//  Codes
//
//  Created by Michael Mogensen on 27/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation

/*
private class EventHandlerWrapper<T: AnyObject, U>
: Invocable, Disposable {
    weak var target: T?
    let handler: (T) -> (U) -> ()
    let event: Event
    
    init(target: T?, handler: T -> U -> (), event: Event<U>) {
        self.target = target
        self.handler = handler
        self.event = event;
    }
    
    func invoke(data: Any) -> () {
        if let t = target {
            handler(t)(data as U)
        }
    }
    
    func dispose() {
        event.eventHandlers =
            event.eventHandlers.filter { $0 !== self }
    }
}

public protocol Disposable {
    func dispose()
}
*/
