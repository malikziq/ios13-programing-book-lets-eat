//
//  RestaurantDetailViewController.swift
//  LetsEat
//
//  Created by Malik Ziq on 3/29/20.
//  Copyright © 2020 Malik Ziq. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {

    var selectedRestaurant: RestaurantItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dump(selectedRestaurant as Any)
    }
}
