//
//  CoreDataHelper.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/30/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import Foundation

func  {
    func getToyListAsString() -> String {
        var toyString = ""
        for toy in toys! {
            toyString += (toy as Toy).name
        }
        return toyString
    }
}
