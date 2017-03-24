//
//  YesNoBox.swift
//  Codes
//
//  Created by Michael Mogensen on 24/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation
import UIKit

// Show simple message box with one button.
class YesNoBox
{
    static public var Answer: Int = -1
    
    static public func Show(
        view: UIViewController,
        title: String,
        message: String,
        button1Title: String = "Yes",
        button2Title: String = "No")
    {
        let alert = UIAlertController(
            title: title as String,
            message: message as String,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(
            title: button1Title,
            style: UIAlertActionStyle.default,
            handler:
            { action in
                Answer = 1
            }))
        alert.addAction(UIAlertAction(
            title: button2Title,
            style: UIAlertActionStyle.default,
            handler:
            { action in
                Answer = 0
            }))
        
        view.present(alert, animated: true, completion: nil)
        
    }
}




