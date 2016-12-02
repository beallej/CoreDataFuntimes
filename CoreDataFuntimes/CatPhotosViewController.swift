//
//  CatPhotosViewController.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import UIKit
import CoreData
class CatPhotosViewController: UICollectionViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let cats = [ "apricot", "bandit", "bobthecat", "bolt", "breezy", "callie", "cocoa", "dottie", "fortune", "fred", "gabriel", "ginger", "gozer", "lexy", "mack", "marshmallow", "misty", "patches", "peaches", "pepper", "pickles", "princess", "pumpkin", "rascal", "shadow", "smokey", "snowball", "socks", "speckles", "sunny", "tabitha", "tubbs", "xerxes"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cats.count
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cat = cats[indexPath.row]
        let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: "catPhotoCell",
                                                      for: indexPath) as! CatPhotoCell
        cell.setCat(catPhoto: cat)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cat = cats[indexPath.row]
        let alert = UIAlertController(title: "ADD AT CAT TO YOUR CAT GARDEN ", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Give your 🐱 a name"
        }
  
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let catName = alert?.textFields![0].text
            if (catName != nil) {
                self.addCatToGarden(catName: catName!, catPhoto: cat)
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func addCatToGarden(catName: String, catPhoto: String) {
        let managedObjectContext = appDelegate.getContext()
        let catEntity = Cat(context: managedObjectContext)
        catEntity.name = catName
        catEntity.photoName = catPhoto
        do {
            try managedObjectContext.save()
        } catch {
            fatalError("Failure to save context: \(error)")
        }

    }
    
    

}

