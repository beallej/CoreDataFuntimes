//
//  CatPhootCell.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import Foundation
import UIKit

class CatPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var catImageView: UIImageView!
    
    func setCat(catPhoto: String) {
        catImageView.image = UIImage(named: catPhoto)
    }
}
