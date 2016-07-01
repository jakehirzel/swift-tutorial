//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jake Hirzel on 6/29/16.
//  Copyright © 2016 Jake Hirzel. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Confirm Meal initializer returns properly with no name or negative rating
    func testMealInitialization() {
        
        // Success case
        let potentialItem = Meal(name: "New meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem, "Fail!")
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName, "Blank name not valid.")
        
        let negRating = Meal(name: "Another new meal", photo: nil, rating: -3)
        XCTAssertNil(negRating, "Negative rating not valid")
    }
}
