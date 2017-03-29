//
//  Event.swift
//  Codes
//
//  Created by Michael Mogensen on 25/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation

class EventX<T>
{
    typealias EventHandler = (T) -> ()
    
    private var _eventHandler: EventHandler! = nil;
    
    func Set(eventHandler: @escaping EventHandler) -> Void
    {
        self._eventHandler = eventHandler
    }
    
    func Send(data: T) -> Void
    {
        self._eventHandler(data)
    }
}

