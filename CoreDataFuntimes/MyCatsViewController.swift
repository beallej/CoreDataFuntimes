//
//  MyCatsViewController.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import UIKit
import CoreData
class MyCatsViewController: UITableViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
 
    var cats : [Cat] = []

    override func viewDidLoad() {
        self.fetchCats()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catTableCell", for: indexPath) as! MyCatCell
        let cat = cats[indexPath.row]
        cell.setCat(cat: cat)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cat = cats[self.tableView.indexPathForSelectedRow!.row]
        let catDetailViewController = segue.destination as! CatDetailViewController
        catDetailViewController.cat = cat

        
    }
    
    func fetchCats(){
        //create a fetch request, telling it about the entity
        let fetchRequest: NSFetchRequest<Cat> = Cat.fetchRequest()
        
        do {
            //go get the results
            cats = try appDelegate.getContext().fetch(fetchRequest)
            
            } catch {
            print("Error with request: \(error)")
        }
    }
    
 
    
}

