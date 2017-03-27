//
//  DetailViewController.swift
//  Codes
//
//  Created by Michael Mogensen on 18/03/2017.
//  Copyright © 2017 Michael Mogensen. All rights reserved.
//

import Foundation
import UIKit

//import

class DetailViewController: UIViewController {
 
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var btnCopyUsername: UIButton!
    
    @IBOutlet weak var btnCopyPassword: UIButton!
    
    @IBOutlet weak var btnRefreshPassword: UIButton!
    
    @IBOutlet weak var btnDelete: UIButton!
    
    var detailItem: Event?
        {
        didSet
        {
            // Update the view.
            self.configureView()
        }
    }
    
    // Update the user interface for the detail item.
    func configureView()
    {
        
        if let detail = self.detailItem
        {
            if let label = self.detailDescriptionLabel
            {
                label.text = detail.timestamp!.description
            }
        }
    }

    // Do any additional setup after loading the view, typically from a nib.
    override func viewDidLoad()
    {
        super.viewDidLoad()
         self.configureView()
    }

    // Dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func OnBtnCopyUsername(_ sender: Any)
    {
        let yesEventHandler = { (action: UIAlertAction) -> Void in
            MessageBox.Show(view: self, title: "Answer", message: "YES");
        }
        let noEventHandler = { (action: UIAlertAction) -> Void in
            MessageBox.Show(view: self, title: "Answer", message: "NO");
        }
       
        YesNoBox.Show(
            view:self,
            title: "Yes or now",
            message: "Please choose",
            yesHandler: yesEventHandler,
            noHandler: noEventHandler)
        
    }

    @IBAction func OnBtnCopyPassword(_ sender: Any)
    {
        InputBox.Show(
            view: self,
            title: "Write something",
            message: "Text",
            buttonConfirmTitle: "Confirm",
            buttonCancelTitle: "Cancel",
            defaultInputText: "default")
    }
    
    @IBAction func OnBtnRefreshPassword(_ sender: Any)
    {
        MessageBox.Show(view: self, title: "Hej", message: "Refresh password");
    }
    
    
    @IBAction func OnBtnDelete(_ sender: Any)
    {
        MessageBox.Show(view: self, title: "Hej", message: "Delete");
    }
}






