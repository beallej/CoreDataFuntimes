//
//  MyCatCell.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import Foundation
import UIKit

class MyCatCell : UITableViewCell {
    
    @IBOutlet weak var catPhoto: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    var cat : Cat?
    func setCat(cat : Cat){
        catPhoto.image = UIImage(named: cat.photo)
        nameLabel.text = cat.name
    }
}
