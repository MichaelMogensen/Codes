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
    //static public var Answer: Int = -1
    
    static public func Show(
        view: UIViewController,
        title: String,
        message: String,
        yesHandler: @escaping (UIAlertAction) -> Void,
        noHandler: @escaping (UIAlertAction) -> Void) -> Void
    {
        let alert = UIAlertController(
            title: title as String,
            message: message as String,
            preferredStyle: UIAlertControllerStyle.alert)
        
        let firstAction = UIAlertAction(
            title: "Yes",
            style: UIAlertActionStyle.default,
            handler: yesHandler)
        alert.addAction(firstAction)
        
        let secondAction = UIAlertAction(
            title: "No",
            style: UIAlertActionStyle.default,
            handler: noHandler)
        alert.addAction(secondAction)
        
        view.present(alert, animated: true, completion: nil)
        
    }
}

/*

UIAlertAction -> Void
 
{ action -> Void in
 
 print("0")
}
 
let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
    //Do some stuff
}
 */






