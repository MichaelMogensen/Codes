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
        buttonConfirmTitle: String = "OK",
        buttonCancelTitle: String = "Cancel")
    {
        //Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "Alert", message: "Swiftly Now! Choose an option!", preferredStyle: .alert)
        
        //Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            //Do some stuff
        }
        actionSheetController.addAction(cancelAction)
        //Create and an option action
        let nextAction: UIAlertAction = UIAlertAction(title: "Next", style: .default) { action -> Void in
            //Do some other stuff
        }
        actionSheetController.addAction(nextAction)
        //Add a text field
        actionSheetController.addTextField { textField -> Void in
            //TextField configuration
            textField.textColor = UIColor.blue
        }
        
        //Present the AlertController
        view.present(actionSheetController, animated: true, completion: nil)
        
    }
}
