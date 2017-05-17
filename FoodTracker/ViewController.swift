//
//  ViewController.swift
//  FoodTracker
//
//  Created by Aaron Perkins on 5/15/17.
//  Copyright © 2017 AaronPerkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    
    //MARK: Properties
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    
    
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
    
    //MARK: UIImagePickerControlDelegate

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {

        dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)");
            
        }
        
        mealImage.image = selectedImage;
        
        dismiss(animated: true, completion: nil);
        
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default  Meal Name";
        
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        //Dismiss keyboard if it's there
        mealNameTextField.resignFirstResponder();
        
        let imagePickerController = UIImagePickerController();
        
        imagePickerController.delegate = self;
        
        imagePickerController.sourceType = .photoLibrary;
        
        present(imagePickerController, animated: true, completion: nil);
        
    }
    

}

