//
//  InputBox.swift
//  Codes
//
//  Created by Michael Mogensen on 24/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation
import UIKit

// Show simple message box with one button.
class InputBox
{
    static public func Show(
        view: UIViewController,
        title: String,
        message: String,
        buttonConfirmTitle: String,
        buttonCancelTitle: String,
        defaultInputText: String = "")
    {
        // Dialog.
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        // Setup confirm button.
        let confirmAction = UIAlertAction(
            title: buttonConfirmTitle,
            style: .default,
            handler: { action -> Void in
                
                let text = alert.textFields?.first?.text
                print(text ?? "nil")
                
        })
        alert.addAction(confirmAction)

        // Setup cancel button.
        let cancelAction = UIAlertAction(
            title: buttonCancelTitle,
            style: .cancel,
            handler: { action -> Void in
                
                // Nothing...
        })
        alert.addAction(cancelAction)
        
        // Setup text field.
        let configurationAction = { (textField: UITextField) -> Void in
            textField.textColor = UIColor.black
            textField.text = defaultInputText
        }
        alert.addTextField(configurationHandler: configurationAction)
        
        // Show.
        view.present(alert, animated: true, completion: nil)
        
    }
    
}

