//
//  Event3.swift
//  Codes
//
//  Created by Michael Mogensen on 27/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation

/*
public class Event3<T> {
    
    public typealias EventHandler = (T) -> ()
    
    private var eventHandlers = [Invocable]()
    
    public func raise(data: T) {
        for handler in self.eventHandlers {
            handler.invoke(data: data)
        }
    }
    
    public func addHandler<U: AnyObject>(target: U,
                           handler: (U) -> EventHandler) -> Disposable {
        let wrapper = EventHandlerWrapper(target: target,
                                          handler: handler, event: self)
        eventHandlers.append(wrapper)
        return wrapper
    }
}

private protocol Invocable: class {
    func invoke(data: Any)
}
*/
