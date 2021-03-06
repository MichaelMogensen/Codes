//
//  MessageBoxWithOneButton.swift
//  Codes
//
//  Created by Michael Mogensen on 22/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation
import UIKit

// Show simple message box with one button.
class MessageBox
{
    static public func Show(
        view: UIViewController,
        title: String,
        message: String,
        buttonTitle: String = "OK")
    {
        let alert = UIAlertController(
            title: title as String,
            message: message as String,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(
            title: buttonTitle,
            style: UIAlertActionStyle.default,
            handler: nil))
        
        view.present(alert, animated: true, completion: nil)

    }
}
