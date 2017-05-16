//
//  ViewController.swift
//  FoodTracker
//
//  Created by Aaron Perkins on 5/15/17.
//  Copyright © 2017 AaronPerkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    
    //MARK: Properties
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks
        mealNameTextField.delegate = self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //Dismisses keyboard
        textField.resignFirstResponder();
        return true;
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text;
        
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default  Meal Name";
        
    }
    

}

