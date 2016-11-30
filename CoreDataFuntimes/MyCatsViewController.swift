//
//  MyCatsViewController.swift
//  CoreDataFuntimes
//
//  Created by Josie Bealle on 11/29/16.
//  Copyright © 2016 Josie Bealle. All rights reserved.
//

import UIKit

class MyCatsViewController: UITableViewController {
    
    
    //TODO: COREDATA
    let cats = [Cat()]

    override func viewDidLoad() {
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
 
    
}


//DELETE ME WHEN WE DO IT THE CORE DATA WAY
class Cat {
    var name = "Peaches"
    var photo = "peaches"
    var toys : [String] = []
}
