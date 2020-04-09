//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Malik Ziq on 3/27/20.
//  Copyright © 2020 Malik Ziq. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
