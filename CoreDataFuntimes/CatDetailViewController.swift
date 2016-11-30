//
//  CatDetailViewController.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CatDetailViewController : UIViewController {
    
    var cat : Cat!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    @IBOutlet weak var catPhoto: UIImageView!
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var catToyLabel: UITextView!
    @IBOutlet weak var addToyButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catPhoto.image = UIImage(named: cat.photoName!)
        catName.text = cat.name
        self.loadCatToys()
    }
    
    @IBAction func addToyPressed(_ sender: Any) {
        let alert = UIAlertController(title: "GIVE YOUR 🐱 A NEW TOY", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Toy name"
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let toyName = alert?.textFields![0].text
            if (toyName != nil) {
                self.addToy(toyName: toyName!)
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func addToy(toyName: String){
        
        //TODO: ADD TOY TO CAT AND UPDATE DISPLAY USING CORE DATA
        loadCatToys()
    }
    
    
    
    func loadCatToys(){
        let toyEntities : NSSet = cat.toys!
        let toyNames = toyEntities.map{return ($0 as! Toy).name!}
        var toyText = "Favorite Toys: "
        toyText += toyNames.joined(separator: ", ")
        catToyLabel.text = toyText
    }
    
}
