//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Malik Ziq on 3/27/20.
//  Copyright © 2020 Malik Ziq. All rights reserved.
//

import Foundation

class ExploreDataManager: DataManager {
    
    fileprivate var items:[ExploreItem] = []
    
    func fetch() {
        for data in load(file: "ExploreData") {
            print(data)
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        return items[index.item]
    }
    
}
