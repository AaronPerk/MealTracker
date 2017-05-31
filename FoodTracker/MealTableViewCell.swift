//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Aaron Perkins on 5/26/17.
//  Copyright © 2017 AaronPerkins. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var mealImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
