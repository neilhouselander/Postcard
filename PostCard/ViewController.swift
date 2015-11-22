//
//  ViewController.swift
//  PostCard
//
//  Created by Neil Houselander on 11/11/2015.
//  Copyright © 2015 Neil Houselander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
  
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {

        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        mailButton.setTitle("Sending", forState: UIControlState.Highlighted)

    
    }

}

