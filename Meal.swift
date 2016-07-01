//
//  Meal.swift
//  FoodTracker
//
//  Created by Jake Hirzel on 7/1/16.
//  Copyright © 2016 Jake Hirzel. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Error check
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
