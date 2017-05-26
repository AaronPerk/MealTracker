//
//  Meal.swift
//  FoodTracker
//
//  Created by Aaron Perkins on 5/26/17.
//  Copyright © 2017 AaronPerkins. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        guard !name.isEmpty else {
            return nil
        }

        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name;
        self.photo = photo;
        self.rating = rating;
        
    }
    
}
