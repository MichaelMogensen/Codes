//
//  MessageBoxWithOneButton.swift
//  Codes
//
//  Created by Michael Mogensen on 22/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation
import UIKit


class MessageBox
{
    static public func Show(view: UIViewController,
              title: String,
              message: String)
    {
        let alert = UIAlertController(
            title: title as String,
            message: message as String,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        view.present(alert, animated: true, completion: nil)

    }
}
