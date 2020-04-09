//
//  RestaurantAPIManager.swift
//  LetsEat
//
//  Created by Malik Ziq on 3/29/20.
//  Copyright © 2020 Malik Ziq. All rights reserved.
//

import Foundation

struct RestaurantAPIManager {
    
    static func loadJSON(file name: String) -> [[String:AnyObject]] {
        var items = [[String:AnyObject]]()
        guard let path = Bundle.main.path(forResource: name, ofType: "json"),
        let data = NSData(contentsOfFile: path)
            else { return [[:]] }
        
        do{
            let json = try JSONSerialization.data(withJSONObject: data as Data, options: .fragmentsAllowed) as AnyObject
            if let restaurants = json as? [[String:AnyObject]] {
                items = restaurants as [[String:AnyObject]]
            }
        }
        catch {
            print("error serializing JSON: \(error)")
            items = [[:]]
        }

        return items
    }
}
